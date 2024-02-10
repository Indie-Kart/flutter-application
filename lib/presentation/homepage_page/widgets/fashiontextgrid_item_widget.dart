import '../models/fashiontextgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FashiontextgridItemWidget extends StatelessWidget {
  FashiontextgridItemWidget(
    this.fashiontextgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FashiontextgridItemModel fashiontextgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 213.v,
      width: 179.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: fashiontextgridItemModelObj?.fashionImage,
            height: 180.v,
            width: 124.h,
            radius: BorderRadius.circular(
              1.h,
            ),
            alignment: Alignment.topRight,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Text(
                fashiontextgridItemModelObj.fashionText!,
                style: CustomTextStyles.titleLargeOnPrimaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 207.v,
              width: 172.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primaryContainer,
                  width: 1.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
