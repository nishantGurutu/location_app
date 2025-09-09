import 'package:dio/dio.dart';
import 'package:location_task/api/api_constant.dart';
import 'package:location_task/location_service/location_handler.dart';
import 'package:location_task/widgets/custom_toast.dart';

class LoginScrvice {
  final Dio _dio = Dio();
  Future<bool> loginApi(String email, String password) async {
    try {
      final token = '';
      _dio.options.headers["Authorization"] = "Bearer $token";
      _dio.options.contentType = 'multipart/form-data';
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

      // final Map<String, dynamic> formDataMap = {
      //   'email': ''.toString(),
      //   'password': ''.toString(),
      //   'lng': ''.toString(),
      //   'lat': ''.toString(),
      //   'browser_id': ''.toString(),
      // };

      // final formData = FormData.fromMap(formDataMap);

      final response = await _dio.post(
        ApiConstant.baseUrl + ApiConstant.login,
        data: {
          'email': email.toString(),
          'password': password.toString(),
          'lng': '${LocationHandler.currentPosition?.longitude}',
          'lat': '${LocationHandler.currentPosition?.latitude}',
          'browser_id': '3417089516'.toString(),
        },

        options: Options(
          validateStatus: (s) => s != null && s < 500,
          receiveDataWhenStatusError: true,
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        CustomToast().showCustomToast(response.data['message']);
        return true;
      } else if (response.statusCode == 400) {
        CustomToast().showCustomToast(response.data['message']);
        return true;
      } else {
        print("Error: ${response.data}");
        CustomToast().showCustomToast("Failed to add lead");
        return false;
      }
    } on DioException catch (e) {
      print("Dio error: ${e.response?.statusCode}");
      print("Error response: ${e.response?.data}");
      print("Message: ${e.message}");
      return false;
    }
  }
}
