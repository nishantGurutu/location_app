import 'package:get/get.dart';
import 'package:location_task/helper/storage_helper.dart';
import 'package:location_task/services/login_scrvice.dart';
import 'package:location_task/view/home_screen.dart';

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
      await StorageHelper.setId(result.data?.id ?? 0);
      await StorageHelper.setName(result.data?.name ?? '');
      await StorageHelper.setEmail(result.data?.email ?? '');
      await StorageHelper.setPhone(result.data?.phone ?? '');
      await StorageHelper.setGender(result.data?.gender ?? '');
      await StorageHelper.setDob(result.data?.dob ?? '');
      await StorageHelper.setImage(result.data?.profilePic ?? '');
      await StorageHelper.setRoleId(result.data?.roleId ?? '');
      await StorageHelper.setDepartmentId(result.data?.departmentId ?? 0);
      await StorageHelper.setDesignationId(result.data?.designationId ?? 0);
      await StorageHelper.setCompanyName(result.data?.companyName ?? '');
      await StorageHelper.setDesignation(result.data?.designationName ?? '');
      await StorageHelper.setDepartment(result.data?.departmentName ?? '');
      await StorageHelper.setEmpNo(result.data?.empNo ?? '');
      await StorageHelper.setAddress(result.data?.streetAddress ?? '');
      await StorageHelper.setCity(result.data?.city ?? '');
      await StorageHelper.setState(result.data?.state ?? '');
      await StorageHelper.setCountry(result.data?.country ?? '');
      await StorageHelper.setPincode(result.data?.pincode ?? '');
      await StorageHelper.setBloodGroup(result.data?.bloodGroup ?? '');
      await StorageHelper.setEducation(result.data?.education ?? '');
      await StorageHelper.setReportingPerson(
        result.data?.reportingPerson ?? '',
      );

      await StorageHelper.setToken(result.data?.token ?? '');
      Get.offAll(() => const HomeScreen());
    } else {}
    isLeadAdding.value = false;
  }
}
