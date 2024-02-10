import 'bloc/info_bloc.dart';
import 'models/info_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/core/utils/validation_functions.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_checkbox_button.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<InfoBloc>(
        create: (context) => InfoBloc(InfoState(infoModelObj: InfoModel()))
          ..add(InfoInitialEvent()),
        child: InfoScreen());
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 44.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_it_s_a_pleasure".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 69.h),
                                      child: Text("msg_sign_up_and_get".tr,
                                          style: CustomTextStyles
                                              .titleMediumPrimaryContainer)),
                                  SizedBox(height: 45.v),
                                  _buildFirstName(context),
                                  SizedBox(height: 16.v),
                                  _buildLastName(context),
                                  SizedBox(height: 32.v),
                                  _buildPassword(context),
                                  SizedBox(height: 16.v),
                                  _buildPassword1(context),
                                  SizedBox(height: 32.v),
                                  _buildRegister(context),
                                  SizedBox(height: 17.v),
                                  _buildAcceptTerms(context),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(children: [
              Row(children: [
                Container(
                    height: 2.v,
                    width: 111.h,
                    decoration: BoxDecoration(
                        color: appTheme.black90001,
                        borderRadius: BorderRadius.circular(1.h))),
                Container(
                    height: 2.v,
                    width: 111.h,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                        color: appTheme.black90001,
                        borderRadius: BorderRadius.circular(1.h)))
              ]),
              SizedBox(height: 16.v),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgChevronBlack90001,
                  margin: EdgeInsets.only(right: 195.h),
                  onTap: () {
                    onTapChevron(context);
                  })
            ])),
        actions: [
          Container(
              height: 2.v,
              width: 111.h,
              margin: EdgeInsets.fromLTRB(5.h, 3.v, 34.h, 51.v),
              decoration: BoxDecoration(
                  color: appTheme.black90001,
                  borderRadius: BorderRadius.circular(1.h)))
        ]);
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: BlocSelector<InfoBloc, InfoState, TextEditingController?>(
            selector: (state) => state.firstNameController,
            builder: (context, firstNameController) {
              return CustomTextFormField(
                  controller: firstNameController,
                  hintText: "msg_please_enter_your".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: BlocSelector<InfoBloc, InfoState, TextEditingController?>(
            selector: (state) => state.lastNameController,
            builder: (context, lastNameController) {
              return CustomTextFormField(
                  controller: lastNameController,
                  hintText: "msg_please_enter_your2".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: BlocBuilder<InfoBloc, InfoState>(builder: (context, state) {
          return CustomTextFormField(
              controller: state.passwordController,
              hintText: "msg_please_enter_your3".tr,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    context.read<InfoBloc>().add(ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPassword,
                          height: 24.adaptSize,
                          width: 24.adaptSize))),
              suffixConstraints: BoxConstraints(maxHeight: 54.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: state.isShowPassword,
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v));
        }));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 28.h),
        child: BlocBuilder<InfoBloc, InfoState>(builder: (context, state) {
          return CustomTextFormField(
              controller: state.passwordController1,
              hintText: "msg_confirmation_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    context.read<InfoBloc>().add(ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPasswordSecondarycontainer,
                          height: 24.adaptSize,
                          width: 24.adaptSize))),
              suffixConstraints: BoxConstraints(maxHeight: 54.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: state.isShowPassword1,
              contentPadding:
                  EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v));
        }));
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        height: 64.v,
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 10.h, right: 28.h),
        buttonStyle: CustomButtonStyles.fillBlack,
        buttonTextStyle: CustomTextStyles.titleLargeInterPrimary,
        onPressed: () {
          onTapRegister(context);
        });
  }

  /// Section Widget
  Widget _buildAcceptTerms(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 55.h),
        child: BlocSelector<InfoBloc, InfoState, bool?>(
            selector: (state) => state.acceptTerms,
            builder: (context, acceptTerms) {
              return CustomCheckboxButton(
                  text: "msg_by_clicking_agree".tr,
                  isExpandedText: true,
                  value: acceptTerms,
                  onChange: (value) {
                    context
                        .read<InfoBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Navigates to the mailVeriScreen when the action is triggered.
  onTapChevron(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mailVeriScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}
