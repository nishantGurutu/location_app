import 'package:dio/dio.dart';
import 'package:location_task/api/api_constant.dart';
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
