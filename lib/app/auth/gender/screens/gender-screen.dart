import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/gender-controller.dart';

class GenderScreen extends StatelessWidget {
  GenderScreen({Key? key}) : super(key: key);
  final _genderController = Get.put(GenderController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
