import 'package:flutter/material.dart';
import 'package:lyness/components/custom_appbar.dart';
import 'package:lyness/product/extensions.dart';

import '../theme.dart';

class CompanyListPage extends StatelessWidget {
  const CompanyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(
        title: "Firmalar",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 0.09.deviceHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: 10.0.borderRadius,
                gradient: const LinearGradient(
                  colors: [ColorConstants.navyBlue, ColorConstants.lotusBlue],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/images/health.png",
                        height: 0.06.deviceHeight,
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Sağlık",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
