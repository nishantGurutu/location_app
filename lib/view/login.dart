import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location_task/controller/login_controller.dart';
import 'package:location_task/location_service/location_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginController loginController = Get.put(LoginController());

  RxDouble? _latitude = 0.0.obs;
  RxDouble? _longitude = 0.0.obs;

  @override
  void initState() {
    super.initState();
    _fetchLocation();
  }

  var loding = false.obs;
  Future<void> _fetchLocation() async {
    loding.value = true;
    try {
      final pos = await LocationService.getCurrentLocation();
      // setState(() {
      _latitude?.value = pos.latitude;
      _longitude?.value = pos.longitude;
      // });
      loding.value = false;
    } catch (e) {
      print("Location error: $e");
    }
    loding.value = false;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Obx(
        () => loding.value == true
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 40),

                      Text('Lat: ${_latitude ?? "--"}'),
                      Text('Long: ${_longitude ?? "--"}'),

                      const SizedBox(height: 20),

                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),

                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            loginController.loginApi(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                              lat: _latitude?.value,
                              lng: _longitude?.value,
                            );
                          }
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
