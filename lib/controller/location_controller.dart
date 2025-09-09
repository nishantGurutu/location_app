import 'package:get/get.dart';
import 'package:location_task/services/location_service.dart';

class LocationController extends GetxController {
  var isLeadAdding = false.obs;

  Future<void> loctionpi() async {
    isLeadAdding.value = true;
    final result = await LocationApiService().locationApi();
    if (result != null) {
    } else {}
    isLeadAdding.value = false;
  }
}
