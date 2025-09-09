import 'package:dio/dio.dart';
import 'package:location_task/api/api_constant.dart';
import 'package:location_task/helper/storage_helper.dart';
import 'package:location_task/model/location_model.dart';
import 'package:location_task/widgets/custom_toast.dart';

class LocationApiService {
  final Dio _dio = Dio();
  Future<LocationModel?> locationApi() async {
    try {
      var token = StorageHelper.getToken();
      _dio.options.headers["Authorization"] = "Bearer $token";
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
        ApiConstant.baseUrl + ApiConstant.location,
        data: {"user_id": 2035, "lat": 1.3565952, "lng": 103.809024},

        options: Options(
          validateStatus: (s) => s != null && s < 500,
          receiveDataWhenStatusError: true,
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return LocationModel.fromJson(response.data);
      } else if (response.statusCode == 400) {
        CustomToast().showCustomToast(response.data['message'].toString());
        return null;
      } else {
        print("Error: ${response.data}");
        CustomToast().showCustomToast(response.data['message']);
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
