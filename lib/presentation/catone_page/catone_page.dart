import '../catone_page/widgets/productgrid_item_widget.dart';
import 'bloc/catone_bloc.dart';
import 'models/catone_model.dart';
import 'models/productgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_drop_down.dart';

class CatonePage extends StatelessWidget {
  const CatonePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CatoneBloc>(
        create: (context) =>
            CatoneBloc(CatoneState(catoneModelObj: CatoneModel()))
              ..add(CatoneInitialEvent()),
        child: CatonePage());
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
                ]))));
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
                  text: "lbl_electronics".tr,
                  margin: EdgeInsets.fromLTRB(9.h, 4.v, 144.h, 5.v))
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
              child: BlocSelector<CatoneBloc, CatoneState, CatoneModel?>(
                  selector: (state) => state.catoneModelObj,
                  builder: (context, catoneModelObj) {
                    return CustomDropDown(
                        width: 100.h,
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(3.h, 8.v, 18.h, 8.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowDown,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        hintText: "lbl_price".tr,
                        items: catoneModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<CatoneBloc>()
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
        child: BlocSelector<CatoneBloc, CatoneState, CatoneModel?>(
            selector: (state) => state.catoneModelObj,
            builder: (context, catoneModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 271.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 24.h,
                      crossAxisSpacing: 24.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: catoneModelObj?.productgridItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ProductgridItemModel model =
                        catoneModelObj?.productgridItemList[index] ??
                            ProductgridItemModel();
                    return ProductgridItemWidget(model, onTapImgMouseImage: () {
                      onTapImgMouseImage(context);
                    });
                  });
            }));
  }

  /// Navigates to the mouseScreen when the action is triggered.
  onTapImgMouseImage(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.mouseScreen);
  }

  /// Navigates to the homepageTabContainerScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageTabContainerScreen,
    );
  }
}
