import '../models/productgrid2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Productgrid2ItemWidget extends StatelessWidget {
  Productgrid2ItemWidget(
    this.productgrid2ItemModelObj, {
    Key? key,
    this.onTapFortyThree,
  }) : super(
          key: key,
        );

  Productgrid2ItemModel productgrid2ItemModelObj;

  VoidCallback? onTapFortyThree;

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
            width: 167.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: productgrid2ItemModelObj?.productImage,
                  height: 187.v,
                  width: 167.h,
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
                    top: 9.v,
                    right: 5.h,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapFortyThree!.call();
            },
            child: Container(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 4.v,
              ),
              decoration: AppDecoration.outlineErrorContainer1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  Text(
                    productgrid2ItemModelObj.productName!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDownOnprimary,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                        ),
                        Text(
                          productgrid2ItemModelObj.discountText!,
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                        Container(
                          height: 15.v,
                          width: 29.h,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    productgrid2ItemModelObj.priceText!,
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
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            productgrid2ItemModelObj.discountedPriceText!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: CustomRatingBar(
                      ignoreGestures: true,
                      initialRating: 4,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text(
                      productgrid2ItemModelObj.deliveryText!,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
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
}
