import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/info-verification-controller.dart';

class InfoVerificationScreen extends StatelessWidget {
  InfoVerificationScreen({Key? key}) : super(key: key);
  final _infoVerificationController = Get.put(InfoVerificationController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
