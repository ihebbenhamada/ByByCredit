import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/privacy-policy-controller.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen({Key? key}) : super(key: key);
  final _privacyPolicyController = Get.put(PrivacyPolicyController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
