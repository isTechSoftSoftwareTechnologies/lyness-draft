import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyness/product/extensions.dart';
import 'package:lyness/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0.1.deviceHeight),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorConstants.navyBlue, ColorConstants.lotusBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 0.02.deviceHeight),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(title, style: const TextStyle(color: Colors.white)),
            centerTitle: true,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(0.1.deviceHeight);
}
