import 'package:get/get.dart';
import 'package:location_task/services/login_scrvice.dart';

class LoginController extends GetxController {
  var isLeadAdding = false.obs;
  Future<void> loginApi({
    required String email,
    required String password,
    double? lat,
    double? lng,
  }) async {
    isLeadAdding.value = true;
    final result = await LoginScrvice().loginApi(email, password, lat, lng);
    if (result != null) {
      Get.back();
    } else {}
    isLeadAdding.value = false;
  }
}
