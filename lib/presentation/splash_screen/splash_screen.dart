import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Spacer(flex: 54),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame11,
                          height: 52.v,
                          width: 60.h),
                      Padding(
                          padding: EdgeInsets.only(top: 32.v),
                          child: Text("lbl_indiekart".tr,
                              style: CustomTextStyles.titleLargeNicoMoji))
                    ]),
                    Spacer(flex: 45),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector1,
                        height: 60.v,
                        width: 318.h,
                        alignment: Alignment.centerRight)
                  ]))));
    });
  }
}
