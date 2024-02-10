import '../catfour_screen/widgets/productgrid2_item_widget.dart';
import 'bloc/catfour_bloc.dart';
import 'models/catfour_model.dart';
import 'models/productgrid2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/catone_page/catone_page.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_bottom_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class CatfourScreen extends StatelessWidget {
  CatfourScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CatfourBloc>(
        create: (context) =>
            CatfourBloc(CatfourState(catfourModelObj: CatfourModel()))
              ..add(CatfourInitialEvent()),
        child: CatfourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 6.v),
                  _buildFilterSection(context),
                  SizedBox(height: 21.v),
                  _buildProductGrid(context),
                  SizedBox(height: 7.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup315,
                      height: 106.v,
                      width: 393.h)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 30.h, right: 26.h),
                child: _buildBottomBar(context))));
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
            child: Stack(alignment: Alignment.bottomLeft, children: [
              AppbarTitleImage(imagePath: ImageConstant.imgGroup11),
              AppbarSubtitleOne(
                  text: "lbl_sports".tr,
                  margin: EdgeInsets.fromLTRB(31.h, 7.v, 166.h, 2.v))
            ])));
  }

  /// Section Widget
  Widget _buildFilterSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 25.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 40.v,
              width: 100.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 40.v,
                        width: 100.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text("lbl_sort_by".tr,
                                  style: theme.textTheme.bodyMedium)),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 24.adaptSize,
                              width: 24.adaptSize)
                        ]))
              ])),
          Container(
              height: 40.v,
              width: 100.h,
              margin: EdgeInsets.only(left: 10.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 40.v,
                        width: 100.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFilterVariantPlus,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text("lbl_filter".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: BlocSelector<CatfourBloc, CatfourState, CatfourModel?>(
                  selector: (state) => state.catfourModelObj,
                  builder: (context, catfourModelObj) {
                    return CustomDropDown(
                        width: 100.h,
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(3.h, 8.v, 18.h, 8.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowDown,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        hintText: "lbl_price".tr,
                        items: catfourModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<CatfourBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        });
                  })),
          CustomImageView(
              imagePath: ImageConstant.imgPlusCircleMultiple,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 9.h, top: 8.v, bottom: 8.v))
        ]));
  }

  /// Section Widget
  Widget _buildProductGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: BlocSelector<CatfourBloc, CatfourState, CatfourModel?>(
            selector: (state) => state.catfourModelObj,
            builder: (context, catfourModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 271.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 24.h,
                      crossAxisSpacing: 24.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: catfourModelObj?.productgrid2ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Productgrid2ItemModel model =
                        catfourModelObj?.productgrid2ItemList[index] ??
                            Productgrid2ItemModel();
                    return Productgrid2ItemWidget(model, onTapFortyThree: () {
                      onTapFortyThree(context);
                    });
                  });
            }));
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

  /// Navigates to the nailpoloishScreen when the action is triggered.
  onTapFortyThree(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.nailpoloishScreen);
  }

  /// Navigates to the homepageTabContainerScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageTabContainerScreen,
    );
  }
}
