import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/date-of-birth-controller.dart';

class DateOfBirthScreen extends StatelessWidget {
  DateOfBirthScreen({Key? key}) : super(key: key);
  final _dateOfBirthController = Get.put(DateOfBirthController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
