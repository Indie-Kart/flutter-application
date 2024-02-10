import 'bloc/splash_screen_two_bloc.dart';
import 'models/splash_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashScreenTwoBloc>(
      create: (context) => SplashScreenTwoBloc(SplashScreenTwoState(
        splashScreenTwoModelObj: SplashScreenTwoModel(),
      ))
        ..add(SplashScreenTwoInitialEvent()),
      child: SplashScreenTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreenTwoBloc, SplashScreenTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 107.h,
                        vertical: 399.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame11,
                            height: 52.v,
                            width: 60.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 33.v),
                            child: Text(
                              "lbl_indiekart".tr,
                              style: CustomTextStyles.titleLargeNicoMoji,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1Errorcontainer,
                    height: 852.v,
                    width: 393.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
