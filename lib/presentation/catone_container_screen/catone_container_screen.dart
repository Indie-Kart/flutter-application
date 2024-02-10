import 'bloc/catone_container_bloc.dart';
import 'models/catone_container_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/catone_page/catone_page.dart';
import 'package:gaurav_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class CatoneContainerScreen extends StatelessWidget {
  CatoneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CatoneContainerBloc>(
        create: (context) => CatoneContainerBloc(CatoneContainerState(
            catoneContainerModelObj: CatoneContainerModel()))
          ..add(CatoneContainerInitialEvent()),
        child: CatoneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatoneContainerBloc, CatoneContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.catonePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 30.h, right: 26.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
