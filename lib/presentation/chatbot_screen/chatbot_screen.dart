import 'bloc/chatbot_bloc.dart';
import 'models/chatbot_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/catone_page/catone_page.dart';
import 'package:gaurav_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:gaurav_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_bottom_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_rating_bar.dart';
import 'package:gaurav_s_application1/widgets/custom_text_form_field.dart';

class ChatbotScreen extends StatelessWidget {
  ChatbotScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatbotBloc>(
      create: (context) => ChatbotBloc(ChatbotState(
        chatbotModelObj: ChatbotModel(),
      ))
        ..add(ChatbotInitialEvent()),
      child: ChatbotScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                left: 14.h,
                right: 14.h,
                bottom: 5.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 25.v,
              ),
              decoration: AppDecoration.outlineErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildStackWithText(
                      context,
                      userText: "msg_hey_there_what".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 105.h),
                    child: _buildRowWithText(
                      context,
                      text: "msg_i_m_looking_for".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: _buildStackWithText(
                      context,
                      userText: "msg_great_here_i_got".tr,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img5ece5dfcccab1T41x27,
                          height: 41.v,
                          width: 27.h,
                          margin: EdgeInsets.only(bottom: 240.v),
                        ),
                        Container(
                          height: 271.v,
                          width: 200.h,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 10.v,
                          ),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle31,
                                height: 269.v,
                                width: 200.h,
                                radius: BorderRadius.only(
                                  topRight: Radius.circular(35.h),
                                  bottomLeft: Radius.circular(35.h),
                                  bottomRight: Radius.circular(25.h),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 271.v,
                                  width: 171.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgScreenshot2023,
                                        height: 189.v,
                                        width: 170.h,
                                        radius: BorderRadius.vertical(
                                          top: Radius.circular(25.h),
                                        ),
                                        alignment: Alignment.topCenter,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 1.h),
                                          padding: EdgeInsets.fromLTRB(
                                              7.h, 4.v, 7.h, 3.v),
                                          decoration: AppDecoration
                                              .outlineErrorContainer1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 2.v),
                                              Text(
                                                "msg_pepe_rugged_jeans".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              SizedBox(height: 3.v),
                                              Row(
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowDownOnprimary,
                                                    height: 12.adaptSize,
                                                    width: 12.adaptSize,
                                                  ),
                                                  Text(
                                                    "lbl_40".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallOnPrimary,
                                                  ),
                                                  Container(
                                                    height: 15.v,
                                                    width: 29.h,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            "lbl_1499".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallPrimaryContainer_1,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                            width: 29.h,
                                                            child: Divider(),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2.h),
                                                    child: Text(
                                                      "lbl_899".tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 13.v),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: CustomRatingBar(
                                                  initialRating: 4,
                                                ),
                                              ),
                                              SizedBox(height: 2.v),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text(
                                                  "msg_delivery_by_11_pm".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallPrimaryContainer,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 105.h),
                    child: _buildRowWithText(
                      context,
                      text: "msg_nice_can_i_know".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 104.h,
                    ),
                    child: _buildRowWithText1(
                      context,
                      description: "msg_yeah_sure_size".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 105.h),
                    child: _buildRowWithText(
                      context,
                      text: "msg_great_can_i_know".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 104.h,
                    ),
                    child: _buildRowWithText1(
                      context,
                      description: "msg_yeah_sure_product".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 105.h),
                    child: _buildRowWithText(
                      context,
                      text: "msg_great_i_like_this".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 104.h,
                    ),
                    child: _buildRowWithText1(
                      context,
                      description: "msg_it_s_my_honor_to".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 104.h,
                    ),
                    child: _buildRowWithText1(
                      context,
                      description: "msg_done_sir_i_place".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 105.h),
                    child: BlocSelector<ChatbotBloc, ChatbotState,
                        TextEditingController?>(
                      selector: (state) => state.thankYouMessageController,
                      builder: (context, thankYouMessageController) {
                        return CustomTextFormField(
                          controller: thankYouMessageController,
                          hintText: "lbl_thankyou".tr,
                          hintStyle: theme.textTheme.bodySmall!,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerRight,
                          suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 3.v, 10.h, 3.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgDefaultIllustr,
                              height: 39.v,
                              width: 37.h,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 45.v,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 21.h,
                            top: 15.v,
                            bottom: 15.v,
                          ),
                          borderDecoration: TextFormFieldStyleHelper
                              .outlineErrorContainerTL22,
                          filled: false,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_indiebot".tr,
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

  /// Common widget
  Widget _buildStackWithText(
    BuildContext context, {
    required String userText,
  }) {
    return SizedBox(
      height: 45.v,
      width: 250.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img5ece5dfcccab1T41x27,
            height: 41.v,
            width: 27.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 13.h),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineErrorContainer2.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder22,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 180.h,
                    child: Text(
                      userText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: appTheme.black90001,
                      ),
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

  /// Common widget
  Widget _buildRowWithText(
    BuildContext context, {
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 12.v,
              bottom: 11.v,
            ),
            child: Text(
              text,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDefaultIllustr,
            height: 39.v,
            width: 37.h,
            margin: EdgeInsets.only(left: 5.h),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowWithText1(
    BuildContext context, {
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img5ece5dfcccab1T41x27,
            height: 41.v,
            width: 27.h,
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 173.v,
            ),
          ),
          Expanded(
            child: Container(
              width: 202.h,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 2.v,
                bottom: 1.v,
              ),
              child: Text(
                description,
                maxLines: 14,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.black90001,
                ),
              ),
            ),
          ),
        ],
      ),
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
