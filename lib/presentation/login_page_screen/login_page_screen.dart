import 'bloc/login_page_bloc.dart';
import 'models/login_page_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_icon_button.dart';
import 'package:gaurav_s_application1/widgets/custom_outlined_button.dart';
import 'package:gaurav_s_application1/domain/facebookauth/facebook_auth_helper.dart';
import 'package:gaurav_s_application1/domain/googleauth/google_auth_helper.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
        create: (context) =>
            LoginPageBloc(LoginPageState(loginPageModelObj: LoginPageModel()))
              ..add(LoginPageInitialEvent()),
        child: LoginPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPageBloc, LoginPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 114.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_welcome_to".tr,
                            style: CustomTextStyles.titleLargePrimaryContainer),
                        SizedBox(height: 76.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFrame11,
                                  height: 52.v,
                                  width: 60.h),
                              Padding(
                                  padding: EdgeInsets.only(top: 32.v),
                                  child: Text("lbl_indiekart".tr,
                                      style:
                                          CustomTextStyles.titleLargeNicoMoji))
                            ]),
                        Spacer(),
                        CustomElevatedButton(
                            height: 64.v,
                            text: "lbl_register".tr,
                            margin: EdgeInsets.symmetric(horizontal: 34.h),
                            buttonStyle:
                                CustomButtonStyles.fillOnPrimaryContainer,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeInterGray100,
                            onPressed: () {
                              onTapRegister(context);
                            }),
                        SizedBox(height: 16.v),
                        CustomOutlinedButton(
                            height: 64.v,
                            text: "lbl_sign_in".tr,
                            margin: EdgeInsets.symmetric(horizontal: 34.h),
                            buttonStyle:
                                CustomButtonStyles.outlineErrorContainer,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeInterGray900,
                            onPressed: () {
                              onTapSignIn(context);
                            }),
                        SizedBox(height: 64.v),
                        _buildDivider(context),
                        SizedBox(height: 14.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 72.h),
                                child: Row(children: [
                                  CustomIconButton(
                                      height: 60.adaptSize,
                                      width: 60.adaptSize,
                                      padding: EdgeInsets.all(14.h),
                                      onTap: () {
                                        onTapBtnFacebook(context);
                                      },
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFacebook)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          padding: EdgeInsets.all(15.h),
                                          onTap: () {
                                            onTapBtnGoogle(context);
                                          },
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGoogle))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          padding: EdgeInsets.all(14.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector)))
                                ])))
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildDivider(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 10.v),
              child: SizedBox(
                  width: 159.h, child: Divider(color: appTheme.gray600))),
          Text("lbl_or".tr, style: CustomTextStyles.titleMediumGray600),
          Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 10.v),
              child: SizedBox(
                  width: 160.h, child: Divider(color: appTheme.gray600)))
        ]);
  }

  /// Navigates to the emailScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.emailScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapBtnFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapBtnGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
