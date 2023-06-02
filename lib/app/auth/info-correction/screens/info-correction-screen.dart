import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/info-correction-controller.dart';

class InfoCorrectionScreen extends StatelessWidget {
  InfoCorrectionScreen({Key? key}) : super(key: key);
  final _infoCorrectionController = Get.put(InfoCorrectionController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
