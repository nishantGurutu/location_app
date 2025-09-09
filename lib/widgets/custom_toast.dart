import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  void showCustomToast(String message) {
    Fluttertoast.showToast(
      backgroundColor: Colors.blue,
      msg: message.replaceAll('  ', '  '),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
