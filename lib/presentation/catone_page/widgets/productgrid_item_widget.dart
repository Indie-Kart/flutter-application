import '../models/productgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class ProductgridItemWidget extends StatelessWidget {
  ProductgridItemWidget(
    this.productgridItemModelObj, {
    Key? key,
    this.onTapImgMouseImage,
  }) : super(
          key: key,
        );

  ProductgridItemModel productgridItemModelObj;

  VoidCallback? onTapImgMouseImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 188.v,
            width: 170.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: productgridItemModelObj?.mouseImage,
                  height: 188.v,
                  width: 170.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(25.h),
                  ),
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgMouseImage!.call();
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHeartOutlinePrimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 10.v,
                    right: 7.h,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            decoration: AppDecoration.outlineErrorContainer1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productgridItemModelObj.productName!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDownOnprimary,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                      Text(
                        productgridItemModelObj.discountText!,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                      Container(
                        height: 15.v,
                        width: 29.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  productgridItemModelObj.priceText!,
                                  style: CustomTextStyles
                                      .bodySmallPrimaryContainer_1,
                                ),
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
                          productgridItemModelObj.discountedPriceText!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 4,
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    productgridItemModelObj.deliveryText!,
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
