import 'bloc/ordered_bloc.dart';
import 'models/ordered_model.dart';
import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/core/app_export.dart';
import 'package:gaurav_s_application1/widgets/custom_elevated_button.dart';
import 'package:gaurav_s_application1/widgets/custom_outlined_button.dart';

class OrderedScreen extends StatelessWidget {
  const OrderedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderedBloc>(
        create: (context) =>
            OrderedBloc(OrderedState(orderedModelObj: OrderedModel()))
              ..add(OrderedInitialEvent()),
        child: OrderedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderedBloc, OrderedState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 26.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPngTransparent,
                            height: 304.v,
                            width: 309.h),
                        SizedBox(height: 47.v),
                        CustomOutlinedButton(
                            height: 70.v,
                            text: "lbl_order_placed".tr,
                            buttonStyle:
                                CustomButtonStyles.outlineErrorContainerTL15,
                            buttonTextStyle: CustomTextStyles
                                .headlineSmallOnPrimaryContainerBold),
                        SizedBox(height: 47.v),
                        CustomElevatedButton(
                            height: 70.v,
                            text: "msg_continue_shopping".tr,
                            buttonStyle:
                                CustomButtonStyles.fillErrorContainerTL15,
                            buttonTextStyle: CustomTextStyles
                                .headlineSmallOnPrimaryContainerBold,
                            onPressed: () {
                              onTapContinueShopping(context);
                            }),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Navigates to the homepageTabContainerScreen when the action is triggered.
  onTapContinueShopping(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageTabContainerScreen,
    );
  }
}
