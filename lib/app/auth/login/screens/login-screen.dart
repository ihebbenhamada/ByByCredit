import 'package:by_by_cedit/widgets/footer/footer.dart';
import 'package:by_by_cedit/widgets/header/header.dart';
import 'package:by_by_cedit/widgets/primary-button/primary-button.dart';
import 'package:by_by_cedit/widgets/social-button/social-button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login-controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Header(title: 'Adresse email'),
            Center(
              child: PrimaryButton(
                text: 'Se Connecter',
                onClick: _loginController.login,
                isOutlined: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(onClick: () {}, name: 'google'),
                SocialButton(onClick: () {}, name: 'apple'),
                SocialButton(onClick: () {}, name: 'facebook'),
              ],
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
