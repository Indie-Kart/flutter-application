import 'bloc/bat_bloc.dart';
import 'models/bat_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/catone_page/catone_page.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_bottom_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class BatScreen extends StatelessWidget {
  BatScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<BatBloc>(
        create: (context) =>
            BatBloc(BatState(batModelObj: BatModel()))..add(BatInitialEvent()),
        child: BatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BatBloc, BatState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.v),
                        _buildHeartOutlineStack(context),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_gm".tr,
                                      style: CustomTextStyles
                                          .titleLargeff000000Bold),
                                  TextSpan(
                                      text: "msg_professional_bat".tr,
                                      style:
                                          CustomTextStyles.titleLargeff000000)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowDownOnprimary,
                                  height: 25.adaptSize,
                                  width: 25.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 2.v)),
                              Text("lbl_40".tr,
                                  style: CustomTextStyles.titleLargeOnPrimary),
                              Container(
                                  height: 30.v,
                                  width: 65.h,
                                  margin: EdgeInsets.only(left: 11.h),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_4999".tr,
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer_1)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 13.v),
                                                child: SizedBox(
                                                    width: 65.h,
                                                    child: Divider())))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Text("lbl_2999".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                        SizedBox(height: 3.v),
                        Container(
                            margin: EdgeInsets.only(left: 11.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 4.v),
                            decoration: AppDecoration.outlineErrorContainer2
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text("lbl_colors".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  Container(
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 10.h, top: 2.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.black90001,
                                          borderRadius:
                                              BorderRadius.circular(9.h))),
                                  Container(
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 10.h, top: 2.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          borderRadius:
                                              BorderRadius.circular(9.h)))
                                ])),
                        SizedBox(height: 12.v),
                        _buildBanksOffersRow(context),
                        SizedBox(height: 12.v),
                        _buildBuyNow(context),
                        SizedBox(height: 20.v),
                        _buildIndieBot(context)
                      ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 75.h,
        leading: AppbarLeadingIconbutton(
            margin: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapIconButton(context);
            }),
        title: Container(
            height: 40.v,
            width: 261.h,
            margin: EdgeInsets.only(left: 43.h),
            child: Stack(alignment: Alignment.centerLeft, children: [
              AppbarTitleImage(imagePath: ImageConstant.imgGroup11),
              AppbarSubtitleOne(
                  text: "lbl_bat".tr,
                  margin: EdgeInsets.fromLTRB(46.h, 5.v, 181.h, 4.v))
            ])));
  }

  /// Section Widget
  Widget _buildHeartOutlineStack(BuildContext context) {
    return Container(
        height: 292.v,
        width: 365.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 13.v),
                  decoration: AppDecoration.outlineErrorContainer2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder25),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgHeartOutlinePrimarycontainer,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.centerRight),
                        SizedBox(height: 210.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 1.v),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5),
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgSafetygoggles,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.h, bottom: 1.v),
                                  child: Text("lbl_view_in_3d".tr,
                                      style: CustomTextStyles
                                          .bodySmallPrimaryContainer))
                            ])),
                        SizedBox(height: 10.v)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.img11292x364,
              height: 292.v,
              width: 364.h,
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildBanksOffersRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 11.h, right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 1.v),
        decoration: AppDecoration.outlinePrimaryContainer1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTag,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 11.v)),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 11.v, bottom: 11.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_banks_offers2".tr,
                            style: CustomTextStyles.titleSmallff4f4f51),
                        TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles.bodyMediumff4f4f51)
                      ]),
                      textAlign: TextAlign.left)),
              Container(
                  width: 185.h,
                  margin: EdgeInsets.only(left: 7.h, top: 1.v, right: 3.h),
                  child: Text("msg_10_instant_discount".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.bodySmallPrimaryContainer_1))
            ]));
  }

  /// Section Widget
  Widget _buildBuyNowButtonRow(BuildContext context) {
    return CustomElevatedButton(width: 150.h, text: "lbl_buy_now".tr);
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        width: 150.h,
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 20.h));
  }

  /// Section Widget
  Widget _buildBuyNow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildBuyNowButtonRow(context),
              _buildAddToCart(context)
            ])));
  }

  /// Section Widget
  Widget _buildIndieBotButtonRow(BuildContext context) {
    return CustomOutlinedButton(
        width: 150.h,
        text: "lbl_indiebot2".tr,
        onPressed: () {
          onTapIndieBotButtonRow(context);
        });
  }

  /// Section Widget
  Widget _buildDetails(BuildContext context) {
    return CustomOutlinedButton(
        width: 150.h,
        text: "lbl_details".tr,
        margin: EdgeInsets.only(left: 20.h));
  }

  /// Section Widget
  Widget _buildIndieBot(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildIndieBotButtonRow(context),
              _buildDetails(context)
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeoutlineonprimarycontainer:
        return AppRoutes.catonePage;
      case BottomBarEnum.Heartoutline:
        return "/";
      case BottomBarEnum.ece5dfcccab1t:
        return "/";
      case BottomBarEnum.Squareroundedbadgeoutline:
        return "/";
      case BottomBarEnum.Cartoutline:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.catonePage:
        return CatonePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the catthreeScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.catthreeScreen,
    );
  }

  /// Navigates to the chatbotScreen when the action is triggered.
  onTapIndieBotButtonRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chatbotScreen,
    );
  }
}
