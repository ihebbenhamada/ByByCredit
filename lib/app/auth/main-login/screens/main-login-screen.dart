import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main-login-controller.dart';

class MainLoginScreen extends StatelessWidget {
  MainLoginScreen({Key? key}) : super(key: key);
  final _mainLoginController = Get.put(MainLoginController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
