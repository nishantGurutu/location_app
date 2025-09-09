import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:location_task/helper/storage_helper.dart';
import 'package:location_task/location_service/location_service.dart';
import 'package:location_task/view/home_screen.dart';
import 'package:location_task/view/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    callingFunction();
  }

  void callingFunction() async {
    await LocationService.initialize();
    Future.delayed(const Duration(seconds: 2)).then((value) => isUserLogin());
  }

  Future<void> isUserLogin() async {
    int? userId = StorageHelper.getId();

    if (userId != null) {
      Get.offAll(() => const HomeScreen());
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Splash Screen", style: TextStyle(fontSize: 16.sp))],
        ),
      ),
    );
  }
}
