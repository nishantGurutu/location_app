import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location_task/controller/location_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LocationController locationController = Get.put(LocationController());
  @override
  void initState() {
    locationController.loctionpi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}
