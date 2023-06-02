import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/verification-code-controller.dart';

class VerificationCodeScreen extends StatelessWidget {
  VerificationCodeScreen({Key? key}) : super(key: key);
  final _verificationCodeController = Get.put(VerificationCodeController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
