import '../checkout_one_screen/widgets/mm2_item_widget.dart';
import 'bloc/checkout_one_bloc.dart';
import 'models/checkout_one_model.dart';
import 'models/mm2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_text_form_field.dart';

class CheckoutOneScreen extends StatelessWidget {
  const CheckoutOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutOneBloc>(
        create: (context) => CheckoutOneBloc(
            CheckoutOneState(checkoutOneModelObj: CheckoutOneModel()))
          ..add(CheckoutOneInitialEvent()),
        child: CheckoutOneScreen());
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
                  SizedBox(height: 28.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Row(children: [
                            Text("msg_credit_card_number".tr,
                                style: theme.textTheme.titleMedium),
                            CustomImageView(
                                imagePath: ImageConstant.imgHelpCircle,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 14.h, top: 6.v, bottom: 5.v))
                          ]))),
                  SizedBox(height: 7.v),
                  _buildTwentyTwo(context),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(children: [
                            Text("msg_card_holder_name".tr,
                                style: theme.textTheme.titleMedium),
                            CustomImageView(
                                imagePath: ImageConstant.imgHelpCircle,
                                height: 15.adaptSize,
                                width: 15.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 12.h, top: 7.v, bottom: 4.v))
                          ]))),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 22.h),
                      child: BlocSelector<CheckoutOneBloc, CheckoutOneState,
                              TextEditingController?>(
                          selector: (state) => state.nameController,
                          builder: (context, nameController) {
                            return CustomTextFormField(
                                controller: nameController,
                                hintText: "lbl_eg_jhon".tr,
                                hintStyle:
                                    CustomTextStyles.bodyLargePrimaryContainer,
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 18.h, vertical: 6.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.outlineBlack,
                                filled: false);
                          })),
                  SizedBox(height: 29.v),
                  _buildExpiryDate(context),
                  SizedBox(height: 6.v),
                  _buildMm(context),
                  SizedBox(height: 46.v),
                  _buildEleven(context),
                  SizedBox(height: 27.v),
                  _buildTen(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_checkout".tr));
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text("msg_xxxx_xxxx_xxxx_xxxx".tr,
                  style: CustomTextStyles.bodyLargePrimaryContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgDownload, height: 25.v, width: 32.h)
        ]));
  }

  /// Section Widget
  Widget _buildExpiryDate(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 28.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 125.h,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_expiry_date".tr,
                            style: theme.textTheme.titleMedium),
                        CustomImageView(
                            imagePath: ImageConstant.imgHelpCircle,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            margin: EdgeInsets.only(
                                left: 7.h, top: 5.v, bottom: 6.v))
                      ])),
              Spacer(),
              Text("lbl_cvv".tr, style: theme.textTheme.titleMedium),
              CustomImageView(
                  imagePath: ImageConstant.imgHelpCircle,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(left: 22.h, top: 4.v, bottom: 8.v))
            ]));
  }

  /// Section Widget
  Widget _buildMm(BuildContext context) {
    return BlocSelector<CheckoutOneBloc, CheckoutOneState, CheckoutOneModel?>(
        selector: (state) => state.checkoutOneModelObj,
        builder: (context, checkoutOneModelObj) {
          return Wrap(
              runSpacing: 11.v,
              spacing: 11.h,
              children: List<Widget>.generate(
                  checkoutOneModelObj?.mm2ItemList.length ?? 0, (index) {
                Mm2ItemModel model =
                    checkoutOneModelObj?.mm2ItemList[index] ?? Mm2ItemModel();
                return Mm2ItemWidget(model, onSelectedChipView: (value) {
                  context.read<CheckoutOneBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                });
              }));
        });
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 2.v),
        decoration: AppDecoration.outlineErrorContainer2
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCheckboxMarked,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 44.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h, top: 5.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_remember_this_card".tr,
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer),
                            SizedBox(height: 7.v),
                            Container(
                                width: 275.h,
                                margin: EdgeInsets.only(right: 15.h),
                                child: Text("msg_we_care_a_lot_about".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.justify,
                                    style: CustomTextStyles.bodySmall12))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 3.h),
              child: _buildThirty(context,
                  discountText: "lbl_product_price".tr,
                  priceText: "lbl_499".tr)),
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 3.h),
              child: _buildThirty(context,
                  discountText: "lbl_discount".tr, priceText: "lbl_250".tr)),
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 3.h),
              child: _buildThirty(context,
                  discountText: "lbl_gst".tr, priceText: "lbl_50".tr)),
          SizedBox(height: 11.v),
          Divider(),
          SizedBox(height: 3.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h),
              child: _buildThirty(context,
                  discountText: "lbl_total_payment".tr,
                  priceText: "lbl_299".tr)),
          SizedBox(height: 10.v),
          CustomElevatedButton(
              text: "msg_proceed_to_checkout".tr,
              margin: EdgeInsets.only(left: 40.h, right: 39.h),
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
          SizedBox(height: 28.v)
        ]));
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String discountText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(discountText,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.black90001)),
      Text(priceText,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.black90001))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the orderedScreen when the action is triggered.
  onTapProceedToCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.orderedScreen,
    );
  }
}
