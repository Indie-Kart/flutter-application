import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeOutlineOnprimarycontainer,
      activeIcon: ImageConstant.imgHomeOutlineOnprimarycontainer,
      type: BottomBarEnum.Homeoutlineonprimarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHeartOutline,
      activeIcon: ImageConstant.imgHeartOutline,
      type: BottomBarEnum.Heartoutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.img5ece5dfcccab1T,
      activeIcon: ImageConstant.img5ece5dfcccab1T,
      type: BottomBarEnum.ece5dfcccab1t,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSquareRoundedBadgeOutline,
      activeIcon: ImageConstant.imgSquareRoundedBadgeOutline,
      type: BottomBarEnum.Squareroundedbadgeoutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCartOutline,
      activeIcon: ImageConstant.imgCartOutline,
      type: BottomBarEnum.Cartoutline,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.primaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder35,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          margin: EdgeInsets.all(5.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              30.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 66.v,
                        width: 39.h,
                        color: theme.colorScheme.onPrimaryContainer,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          top: 4.v,
                          right: 16.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 34.adaptSize,
              width: 34.adaptSize,
              color: theme.colorScheme.onPrimaryContainer,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 34.adaptSize,
              width: 34.adaptSize,
              color: theme.colorScheme.onPrimaryContainer,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homeoutlineonprimarycontainer,
  Heartoutline,
  ece5dfcccab1t,
  Squareroundedbadgeoutline,
  Cartoutline,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
