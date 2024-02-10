import '../models/productgrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productgrid1ItemWidget extends StatelessWidget {
  Productgrid1ItemWidget(
    this.productgrid1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productgrid1ItemModel productgrid1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Container(
        height: 270.v,
        width: 170.h,
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(2.h, 4.v, 2.h, 3.v),
                decoration: AppDecoration.outlineErrorContainer1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.v),
                    Text(
                      productgrid1ItemModelObj.productName!,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDownOnprimary,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                          Text(
                            productgrid1ItemModelObj.discountPercentage!,
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
                                      productgrid1ItemModelObj.originalPrice!,
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
                              productgrid1ItemModelObj.discountedPrice!,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomRatingBar(
                        ignoreGestures: true,
                        initialRating: 4,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        productgrid1ItemModelObj.deliveryTime!,
                        style: CustomTextStyles.bodySmallPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 195.v,
                width: 170.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: productgrid1ItemModelObj?.image,
                      height: 195.v,
                      width: 170.h,
                      radius: BorderRadius.vertical(
                        top: Radius.circular(25.h),
                      ),
                      alignment: Alignment.center,
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
            ),
          ],
        ),
      ),
    );
  }
}
