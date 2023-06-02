import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/country-controller.dart';

class CountryScreen extends StatelessWidget {
  CountryScreen({Key? key}) : super(key: key);
  final _countryController = Get.put(CountryController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('login'),
      ),
    );
  }
}
