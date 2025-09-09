import 'package:dio/dio.dart';
import 'package:location_task/api/api_constant.dart';
import 'package:location_task/helper/storage_helper.dart';
import 'package:location_task/model/login_model.dart';
import 'package:location_task/widgets/custom_toast.dart';

class LoginScrvice {
  final Dio _dio = Dio();
  Future<LoginModel?> loginApi(
    String email,
    String password,
    double? lat,
    double? lng,
  ) async {
    try {
      _dio.options.contentType = 'application/json';
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          error: true,
          logPrint: (object) {
            print('Add lead log print data value ${object}');
          },
        ),
      );

      final response = await _dio.post(
        ApiConstant.baseUrl + ApiConstant.login,
        data: {
          'email': email.toString(),
          'password': password.toString(),
          'lng': lng,
          'lat': lat,
          'browser_id': '3417089516'.toString(),
        },

        options: Options(
          validateStatus: (s) => s != null && s < 500,
          receiveDataWhenStatusError: true,
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        CustomToast().showCustomToast(response.data['message']);
        return LoginModel.fromJson(response.data);
        // await StorageHelper.setId(
        //   int.tryParse(response.data['id'].toString()) ?? 0,
        // );
        // await StorageHelper.setName(response.data['name'].toString());
        // await StorageHelper.setEmail(response.data['email'].toString());
        // await StorageHelper.setPhone(response.data['phone'].toString());
        // await StorageHelper.setGender(response.data['gender'].toString());
        // await StorageHelper.setDob(response.data['dob'].toString());
        // await StorageHelper.setImage(response.data['profile_pic'].toString());
        // await StorageHelper.setRoleId(response.data['role_id'].toString());
        // await StorageHelper.setDepartmentId(
        //   int.parse(response.data['department_id'].toString()),
        // );
        // await StorageHelper.setDesignationId(
        //   int.parse(response.data['designation_id'].toString()),
        // );
        // await StorageHelper.setCompanyName(
        //   response.data['company_name'].toString(),
        // );
        // await StorageHelper.setDesignation(
        //   response.data['designation'].toString(),
        // );
        // await StorageHelper.setDepartment(
        //   response.data['department'].toString(),
        // );
        // await StorageHelper.setEmpNo(response.data['emp_no'].toString());
        // await StorageHelper.setAddress(
        //   response.data['street_address'].toString(),
        // );
        // await StorageHelper.setCity(response.data['city'].toString());
        // await StorageHelper.setState(response.data['state'].toString());
        // await StorageHelper.setCountry(response.data['country'].toString());
        // await StorageHelper.setPincode(response.data['pincode'].toString());
        // await StorageHelper.setBloodGroup(
        //   response.data['blood_group'].toString(),
        // );
        // await StorageHelper.setEducation(response.data['education'].toString());
        // await StorageHelper.setReportingPerson(
        //   response.data['reporting_person'].toString(),
        // );

        // await StorageHelper.setToken(response.data['token'].toString());
        // CustomToast().showCustomToast(response.data['message']);
        // return true;
      } else if (response.statusCode == 400) {
        CustomToast().showCustomToast(response.data['message'].toString());
        return null;
      } else {
        print("Error: ${response.data}");
        CustomToast().showCustomToast("Failed to add lead");
        return null;
      }
    } on DioException catch (e) {
      print("Dio error: ${e.response?.statusCode}");
      print("Error response: ${e.response?.data}");
      print("Message: ${e.message}");
      return null;
    }
  }
}
