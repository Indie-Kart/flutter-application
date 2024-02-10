import 'bloc/homepage_tab_container_bloc.dart';
import 'models/homepage_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/catone_page/catone_page.dart';
import 'package:gaurav_s_application1/presentation/homepage_page/homepage_page.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_bottom_bar.dart';

class HomepageTabContainerScreen extends StatefulWidget {
  const HomepageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageTabContainerScreenState createState() =>
      HomepageTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageTabContainerBloc>(
      create: (context) => HomepageTabContainerBloc(HomepageTabContainerState(
        homepageTabContainerModelObj: HomepageTabContainerModel(),
      ))
        ..add(HomepageTabContainerInitialEvent()),
      child: HomepageTabContainerScreen(),
    );
  }
}

class HomepageTabContainerScreenState extends State<HomepageTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.v),
              _buildTabview(context),
              SizedBox(
                height: 588.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HomepagePage.builder(context),
                    HomepagePage.builder(context),
                    HomepagePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 75.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 15.h,
          top: 8.v,
          bottom: 8.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          children: [
            SizedBox(height: 2.v),
            AppbarImage(
              imagePath: ImageConstant.imgAccount,
            ),
          ],
        ),
      ),
      title: BlocSelector<HomepageTabContainerBloc, HomepageTabContainerState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 43.h),
            hintText: "lbl_indiekart".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 320.h,
      margin: EdgeInsets.only(left: 15.h),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "lbl_fashion".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_electronics".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_mobiles".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
