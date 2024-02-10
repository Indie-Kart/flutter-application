import 'bloc/email_bloc.dart';
import 'models/email_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/core/utils/validation_functions.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_icon_button.dart';
import 'package:gaurav_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EmailScreen extends StatelessWidget {
  EmailScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EmailBloc>(
        create: (context) => EmailBloc(EmailState(emailModelObj: EmailModel()))
          ..add(EmailInitialEvent()),
        child: EmailScreen());
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
                            padding: EdgeInsets.symmetric(vertical: 43.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 241.h,
                                      margin: EdgeInsets.only(left: 67.h),
                                      child: Text("msg_please_provide_your".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .headlineSmallOnPrimaryContainer
                                              .copyWith(height: 1.33))),
                                  SizedBox(height: 15.v),
                                  Container(
                                      width: 221.h,
                                      margin: EdgeInsets.only(left: 76.h),
                                      child: Text(
                                          "msg_we_need_this_information".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.labelLarge!
                                              .copyWith(height: 1.85))),
                                  SizedBox(height: 45.v),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 34.h, right: 52.h),
                                      child: BlocSelector<EmailBloc, EmailState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.emailController,
                                          builder: (context, emailController) {
                                            return CustomTextFormField(
                                                controller: emailController,
                                                hintText: "lbl_email".tr,
                                                textInputAction:
                                                    TextInputAction.done,
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
                                                });
                                          })),
                                  SizedBox(height: 32.v),
                                  CustomElevatedButton(
                                      height: 64.v,
                                      text: "lbl_submit".tr,
                                      margin: EdgeInsets.only(
                                          left: 34.h, right: 52.h),
                                      buttonStyle: CustomButtonStyles
                                          .fillOnPrimaryContainer,
                                      buttonTextStyle: CustomTextStyles
                                          .titleLargeInterPrimary,
                                      onPressed: () {
                                        onTapSubmit(context);
                                      }),
                                  SizedBox(height: 49.v),
                                  _buildDivider(context),
                                  SizedBox(height: 65.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapSocialSignUp(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 81.h),
                                          child: Row(children: [
                                            CustomIconButton(
                                                height: 60.adaptSize,
                                                width: 60.adaptSize,
                                                padding: EdgeInsets.all(14.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFacebook)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: CustomIconButton(
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(15.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGoogle))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: CustomIconButton(
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(14.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector)))
                                          ]))),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Column(children: [
              Row(children: [
                Container(
                    height: 2.v,
                    width: 111.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(1.h))),
                Container(
                    height: 2.v,
                    width: 111.h,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                        color: appTheme.black900.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(1.h)))
              ]),
              SizedBox(height: 18.v),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgChevron,
                  margin: EdgeInsets.only(left: 2.h, right: 193.h),
                  onTap: () {
                    onTapChevron(context);
                  })
            ])),
        actions: [
          Container(
              height: 2.v,
              width: 111.h,
              margin: EdgeInsets.fromLTRB(5.h, 2.v, 36.h, 52.v),
              decoration: BoxDecoration(
                  color: appTheme.black900.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(1.h)))
        ]);
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

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapChevron(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }

  /// Navigates to the mailVeriScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mailVeriScreen,
    );
  }

  /// Navigates to the homepageTabContainerScreen when the action is triggered.
  onTapSocialSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageTabContainerScreen,
    );
  }
}
