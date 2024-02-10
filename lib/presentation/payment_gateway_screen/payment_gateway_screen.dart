import 'bloc/payment_gateway_bloc.dart';
import 'models/payment_gateway_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_text_form_field.dart';

class PaymentGatewayScreen extends StatelessWidget {
  const PaymentGatewayScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentGatewayBloc>(
        create: (context) => PaymentGatewayBloc(
            PaymentGatewayState(paymentGatewayModelObj: PaymentGatewayModel()))
          ..add(PaymentGatewayInitialEvent()),
        child: PaymentGatewayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text("msg_chose_a_payment".tr,
                              style: CustomTextStyles
                                  .bodyLargePrimaryContainerLight))),
                  SizedBox(height: 17.v),
                  _buildPaymentOptions(context),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 22.h),
                      child: BlocSelector<PaymentGatewayBloc,
                              PaymentGatewayState, TextEditingController?>(
                          selector: (state) => state.creditCardvalueController,
                          builder: (context, creditCardvalueController) {
                            return CustomTextFormField(
                                controller: creditCardvalueController,
                                hintText: "lbl_credit_card".tr,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 8.v, 11.h, 8.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .img2165d3591fb94f31bb62a863884a9537,
                                        height: 23.v,
                                        width: 35.h)),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 40.v),
                                contentPadding: EdgeInsets.only(
                                    left: 18.h, top: 6.v, bottom: 6.v),
                                borderDecoration: TextFormFieldStyleHelper
                                    .outlineErrorContainerTL5,
                                filled: false);
                          })),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: _buildApplePay(context,
                          text: "lbl_upi".tr,
                          image: ImageConstant.imgUpiProcessesRecord7)),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: _buildApplePay(context,
                          text: "lbl_apple_pay".tr,
                          image: ImageConstant.imgApplePayOgTwitter)),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: _buildApplePay(context,
                          text: "lbl_net_banking".tr,
                          image: ImageConstant.img634436200)),
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: _buildApplePay(context,
                          text: "lbl_pay_later".tr,
                          image: ImageConstant.imgApplePayLater)),
                  Spacer(),
                  _buildCheckout(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_payment_method".tr));
  }

  /// Section Widget
  Widget _buildPaymentOptions(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h, bottom: 1.v),
              child:
                  Text("lbl_debit_card".tr, style: theme.textTheme.bodyLarge)),
          CustomImageView(
              imagePath: ImageConstant.imgDownload,
              height: 25.v,
              width: 32.h,
              margin: EdgeInsets.only(bottom: 1.v))
        ]));
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 9.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, bottom: 13.v),
                        child: Text("lbl_total_payment".tr,
                            style: theme.textTheme.titleMedium)),
                    Column(children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("lbl_299".tr,
                              style: theme.textTheme.titleLarge)),
                      Text("msg_view_price_details".tr,
                          style: CustomTextStyles.bodySmallPrimaryContainer_1
                              .copyWith(decoration: TextDecoration.underline))
                    ])
                  ])),
          SizedBox(height: 17.v),
          CustomElevatedButton(
              text: "msg_proceed_to_checkout".tr,
              margin: EdgeInsets.only(left: 37.h, right: 36.h),
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowright,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              buttonStyle: CustomButtonStyles.fillPrimaryContainer,
              buttonTextStyle: CustomTextStyles.bodyLargePrimary,
              onPressed: () {
                onTapProceedToCheckout(context);
              }),
          SizedBox(height: 13.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgShieldLock,
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v)),
            Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text("msg_secured_by_256_bit".tr,
                    style: CustomTextStyles.bodySmallPrimaryContainer_1))
          ]),
          SizedBox(height: 13.v)
        ]));
  }

  /// Common widget
  Widget _buildApplePay(
    BuildContext context, {
    required String text,
    required String image,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.v),
        decoration: AppDecoration.outlineErrorContainer2
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h, top: 3.v),
              child: Text(text,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black90001))),
          CustomImageView(
              imagePath: image,
              height: 17.v,
              width: 35.h,
              margin: EdgeInsets.symmetric(vertical: 6.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapProceedToCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkoutScreen,
    );
  }
}
