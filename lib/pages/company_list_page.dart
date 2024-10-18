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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: Column(
          children: [
            const SectorWidget(
                iconPath: "assets/images/health.png", title: "Sağlık"),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: CustomSearchBar(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "İstediğiniz firmada indirim yakalama fırsatı...",
                style: TextStyle(fontSize: 17, color: Colors.black54),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const CompanyListWidget(
                  companyName: "Firma Adı Firma Adı Firma Adı",
                  discountRate: 10,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

class CompanyListWidget extends StatelessWidget {
  const CompanyListWidget({
    super.key,
    required this.companyName,
    required this.discountRate,
  });

  final String companyName;
  final int discountRate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: InkWell(
        onTap: () {
          //Get.to(() => CompanyDetailPage());
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: 10.0.borderRadius,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          height: 75,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(
                    "assets/images/right_arrow.png",
                    height: 30,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  companyName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: 10.0.radius,
                      bottomRight: 10.0.radius,
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        ColorConstants.navyBlue,
                        ColorConstants.pastelBlue
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "%$discountRate",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: 10.0.borderRadius,
        ),
      ),
      backgroundColor: const WidgetStatePropertyAll(Colors.white),
      elevation: const WidgetStatePropertyAll(4),
      hintText: "Firma Ara",
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
        child:
            Image.asset("assets/images/search.png", height: 0.04.deviceHeight),
      ),
    );
  }
}

class SectorWidget extends StatelessWidget {
  const SectorWidget({
    super.key,
    required this.title,
    required this.iconPath,
  });
  final String iconPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                iconPath,
                height: 0.06.deviceHeight,
              ),
            ),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
