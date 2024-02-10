import '../homepage_page/widgets/fashiontextgrid_item_widget.dart';
import 'bloc/homepage_bloc.dart';
import 'models/fashiontextgrid_item_model.dart';
import 'models/homepage_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageBloc>(
      create: (context) => HomepageBloc(HomepageState(
        homepageModelObj: HomepageModel(),
      ))
        ..add(HomepageInitialEvent()),
      child: HomepagePage(),
    );
  }
}

class HomepagePageState extends State<HomepagePage>
    with AutomaticKeepAliveClientMixin<HomepagePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillSecondaryContainer,
          child: Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 7.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlusCircleMultiple,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(right: 18.h),
                ),
                SizedBox(height: 22.v),
                _buildSeventyFourStack(context),
                SizedBox(height: 9.v),
                _buildFashionTextGrid(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFourStack(BuildContext context) {
    return Container(
      height: 127.v,
      width: 364.h,
      margin: EdgeInsets.only(right: 7.h),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCommercial1,
            height: 127.v,
            width: 364.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 2.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame11,
                    height: 24.v,
                    width: 28.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Text(
                      "lbl_indiekart".tr,
                      style: CustomTextStyles.bodySmallNicoMoji,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFashionTextGrid(BuildContext context) {
    return BlocSelector<HomepageBloc, HomepageState, HomepageModel?>(
      selector: (state) => state.homepageModelObj,
      builder: (context, homepageModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 214.v,
            crossAxisCount: 1,
            mainAxisSpacing: 1.h,
            crossAxisSpacing: 1.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: homepageModelObj?.fashiontextgridItemList.length ?? 0,
          itemBuilder: (context, index) {
            FashiontextgridItemModel model =
                homepageModelObj?.fashiontextgridItemList[index] ??
                    FashiontextgridItemModel();
            return FashiontextgridItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
