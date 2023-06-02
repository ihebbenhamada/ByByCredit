import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/username-controller.dart';

class UserNameScreen extends StatelessWidget {
  UserNameScreen({Key? key}) : super(key: key);
  final _userNameController = Get.put(UserNameController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
