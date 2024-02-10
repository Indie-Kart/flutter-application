import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
    this.onTapImgCricketBatImage,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  VoidCallback? onTapImgCricketBatImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          SizedBox(
            height: 187.v,
            width: 166.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: userprofilesectionItemModelObj?.cricketBatImage,
                  height: 187.v,
                  width: 166.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(25.h),
                  ),
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgCricketBatImage!.call();
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHeartOutlinePrimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 5.h,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(3.h, 5.v, 3.h, 4.v),
            decoration: AppDecoration.outlineErrorContainer1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    userprofilesectionItemModelObj.cricketBatText!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDownOnprimary,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                      Text(
                        userprofilesectionItemModelObj.fortyText!,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                      Container(
                        height: 15.v,
                        width: 32.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                userprofilesectionItemModelObj.priceText!,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer_1,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 6.v),
                                child: SizedBox(
                                  width: 29.h,
                                  child: Divider(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          userprofilesectionItemModelObj.priceText2!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 4,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    userprofilesectionItemModelObj.deliveryText!,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
