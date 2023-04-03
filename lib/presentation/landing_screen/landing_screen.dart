import 'package:flutter/material.dart';
import 'package:rapid_landing/core/app_export.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.greenA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getVerticalSize(
                  187,
                ),
                width: getHorizontalSize(
                  160,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "RAPAID",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRomanBold40,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgNewlogo1,
                      height: getSize(
                        147,
                      ),
                      width: getSize(
                        147,
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                  bottom: 5,
                ),
                child: Text(
                  "Quick, Secure Payments",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRomanMedium20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
