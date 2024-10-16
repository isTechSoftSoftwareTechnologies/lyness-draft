import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyness/pages/company_list_page.dart';
import 'package:lyness/product/extensions.dart';
import 'package:lyness/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.lightTheme,
      home: CompanyListPage(),
    );
  }
}
