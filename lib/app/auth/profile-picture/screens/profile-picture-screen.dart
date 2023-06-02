import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile-picture-controller.dart';

class ProfilePictureScreen extends StatelessWidget {
  ProfilePictureScreen({Key? key}) : super(key: key);
  final _profilePictureController = Get.put(ProfilePictureController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
