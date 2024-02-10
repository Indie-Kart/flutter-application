import 'bloc/mail_veri_bloc.dart';
import 'models/mail_veri_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';

class MailVeriScreen extends StatelessWidget {
  const MailVeriScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MailVeriBloc>(
        create: (context) =>
            MailVeriBloc(MailVeriState(mailVeriModelObj: MailVeriModel()))
              ..add(MailVeriInitialEvent()),
        child: MailVeriScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MailVeriBloc, MailVeriState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 46.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 317.h,
                            margin: EdgeInsets.only(left: 12.h, right: 30.h),
                            child: Text("msg_please_check_your".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLargeIndigo900
                                    .copyWith(height: 1.60))),
                        SizedBox(height: 19.v),
                        Container(
                            width: 305.h,
                            margin: EdgeInsets.only(left: 18.h, right: 36.h),
                            child: Text("msg_an_account_activation".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleSmallIndigo900
                                    .copyWith(height: 1.71))),
                        SizedBox(height: 29.v),
                        CustomElevatedButton(
                            height: 60.v,
                            text: "lbl_open_email".tr,
                            margin: EdgeInsets.only(right: 18.h),
                            buttonStyle:
                                CustomButtonStyles.fillOnPrimaryContainer,
                            buttonTextStyle: CustomTextStyles.bodyLargePrimary,
                            onPressed: () {
                              onTapOpenEmail(context);
                            }),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Text("msg_haven_t_received".tr,
                                style: CustomTextStyles
                                    .bodyMediumPrimaryContainer)),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(left: 134.h),
                            child: Text("lbl_resend_it".tr,
                                style:
                                    CustomTextStyles.titleMediumDeeporange400)),
                        SizedBox(height: 5.v)
                      ]))));
    });
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
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(1.h))),
                Container(
                    height: 2.v,
                    width: 111.h,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(1.h)))
              ]),
              SizedBox(height: 16.v),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgChevron,
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
                  color: appTheme.black900.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(1.h)))
        ]);
  }

  /// Navigates to the emailScreen when the action is triggered.
  onTapChevron(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.emailScreen,
    );
  }

  /// Navigates to the infoScreen when the action is triggered.
  onTapOpenEmail(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.infoScreen,
    );
  }
}
