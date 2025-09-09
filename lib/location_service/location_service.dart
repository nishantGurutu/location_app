import 'dart:async';

import 'package:geolocator/geolocator.dart';

class LocationService {
  /// Check service + request permissions if needed.
  /// Returns true if location service is enabled and permission granted.
  static Future<bool> checkAndRequestPermission() async {
    // 1) Service (GPS) enabled?
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Let user know to enable location from device settings.
      return false;
    }

    // 2) Permission status
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permission denied (user declined).
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, open app settings (or instruct user).
      return false;
    }

    // granted (either whileInUse or always)
    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  /// Get current single location (throws if permission/service problem)
  static Future<Position> getCurrentLocation({int timeoutSeconds = 15}) async {
    final ok = await checkAndRequestPermission();
    if (!ok) {
      throw Exception('Location service disabled or permission denied');
    }

    final pos =
        await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        ).timeout(
          Duration(seconds: timeoutSeconds),
          onTimeout: () => throw TimeoutException('Location request timed out'),
        );

    return pos;
  }

  /// Start listening to location updates (distanceFilter in meters)
  static StreamSubscription<Position> startLocationStream(
    void Function(Position) onData, {
    LocationAccuracy accuracy = LocationAccuracy.best,
    int distanceFilter = 50,
  }) {
    final locationSettings = LocationSettings(
      accuracy: accuracy,
      distanceFilter: distanceFilter,
    );

    final stream = Geolocator.getPositionStream(
      locationSettings: locationSettings,
    );
    final sub = stream.listen(
      onData,
      onError: (e) {
        // handle errors if needed
        // print('Location stream error: $e');
      },
    );

    return sub;
  }

  /// Open app settings (useful if permission is deniedForever)
  static Future<bool> openAppSettings() async {
    return await Geolocator.openAppSettings();
  }
}
