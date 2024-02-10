import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/core/utils/validation_functions.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_icon_button.dart';
import 'package:gaurav_s_application1/widgets/custom_text_form_field.dart';
import 'package:gaurav_s_application1/domain/facebookauth/facebook_auth_helper.dart';
import 'package:gaurav_s_application1/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 55.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: Text("msg_it_s_great_to_have".tr,
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 52.h),
                                      child: Text("msg_sign_in_and_continue".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimaryContainer)),
                                  SizedBox(height: 45.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 34.h, right: 52.h),
                                      child: BlocSelector<
                                              SignInBloc,
                                              SignInState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.emailController,
                                          builder: (context, emailController) {
                                            return CustomTextFormField(
                                                controller: emailController,
                                                hintText: "lbl_email".tr,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_email"
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                                borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .outlineErrorContainer1);
                                          })),
                                  SizedBox(height: 16.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 34.h, right: 52.h),
                                      child:
                                          BlocBuilder<SignInBloc, SignInState>(
                                              builder: (context, state) {
                                        return CustomTextFormField(
                                            controller:
                                                state.passwordController,
                                            hintText: "lbl_password".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: InkWell(
                                                onTap: () {
                                                  context.read<SignInBloc>().add(
                                                      ChangePasswordVisibilityEvent(
                                                          value: !state
                                                              .isShowPassword));
                                                },
                                                child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30.h, 15.v, 16.h, 15.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPasswordSecondarycontainer,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize))),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 54.v),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            obscureText: state.isShowPassword,
                                            contentPadding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 15.v,
                                                bottom: 15.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineErrorContainer1);
                                      })),
                                  SizedBox(height: 32.v),
                                  CustomElevatedButton(
                                      height: 60.v,
                                      text: "lbl_sign_in".tr,
                                      margin: EdgeInsets.only(
                                          left: 34.h, right: 52.h),
                                      buttonStyle: CustomButtonStyles.fillBlack,
                                      buttonTextStyle:
                                          CustomTextStyles.bodyLargePrimary,
                                      onPressed: () {
                                        onTapSignIn(context);
                                      }),
                                  SizedBox(height: 15.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 34.h, right: 52.h),
                                      child: Row(children: [
                                        Text("lbl_new_user".tr,
                                            style: CustomTextStyles
                                                .bodyLargePrimaryContainer16),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtRegister(context);
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.h, top: 2.v),
                                                child: Text("lbl_register".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeDeeporange400))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 2.v),
                                            child: Text(
                                                "msg_forgot_password".tr,
                                                style: CustomTextStyles
                                                    .bodyLargePrimaryContainer16))
                                      ])),
                                  Spacer(),
                                  _buildDivider(context),
                                  SizedBox(height: 14.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 81.h),
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
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: CustomIconButton(
                                                height: 60.adaptSize,
                                                width: 60.adaptSize,
                                                padding: EdgeInsets.all(15.h),
                                                onTap: () {
                                                  onTapBtnGoogle(context);
                                                },
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGoogle))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: CustomIconButton(
                                                height: 60.adaptSize,
                                                width: 60.adaptSize,
                                                padding: EdgeInsets.all(14.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVector)))
                                      ])),
                                  SizedBox(height: 59.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector108,
            margin: EdgeInsets.fromLTRB(27.h, 18.v, 356.h, 19.v)));
  }

  /// Section Widget
  Widget _buildDivider(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: Row(
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
            ]));
  }

  /// Navigates to the homepageTabContainerScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageTabContainerScreen,
    );
  }

  /// Navigates to the emailScreen when the action is triggered.
  onTapTxtRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.emailScreen,
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
