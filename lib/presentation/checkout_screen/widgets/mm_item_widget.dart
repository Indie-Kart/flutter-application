import '../models/mm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MmItemWidget extends StatelessWidget {
  MmItemWidget(
    this.mmItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  MmItemModel mmItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 6.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          mmItemModelObj.mm!,
          style: TextStyle(
            color: appTheme.black90001,
            fontSize: 18.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (mmItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.black90001.withOpacity(0.2),
        shape: (mmItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.errorContainer,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.errorContainer,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
