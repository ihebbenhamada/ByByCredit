import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cin-controller.dart';

class CinScreen extends StatelessWidget {
  CinScreen({Key? key}) : super(key: key);
  final _cinController = Get.put(CinController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
