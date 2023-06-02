import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/mobile-controller.dart';

class MobileNumberScreen extends StatelessWidget {
  MobileNumberScreen({Key? key}) : super(key: key);
  final _mobileNumberController = Get.put(MobileNumberController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
