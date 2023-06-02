import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/password-controller.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({Key? key}) : super(key: key);
  final _passwordController = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
