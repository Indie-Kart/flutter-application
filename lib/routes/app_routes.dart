import 'package:flutter/material.dart';
import 'package:gaurav_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:gaurav_s_application1/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:gaurav_s_application1/presentation/login_page_screen/login_page_screen.dart';
import 'package:gaurav_s_application1/presentation/email_screen/email_screen.dart';
import 'package:gaurav_s_application1/presentation/mail_veri_screen/mail_veri_screen.dart';
import 'package:gaurav_s_application1/presentation/info_screen/info_screen.dart';
import 'package:gaurav_s_application1/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:gaurav_s_application1/presentation/homepage_tab_container_screen/homepage_tab_container_screen.dart';
import 'package:gaurav_s_application1/presentation/catone_container_screen/catone_container_screen.dart';
import 'package:gaurav_s_application1/presentation/cattwo_screen/cattwo_screen.dart';
import 'package:gaurav_s_application1/presentation/catthree_screen/catthree_screen.dart';
import 'package:gaurav_s_application1/presentation/catfour_screen/catfour_screen.dart';
import 'package:gaurav_s_application1/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:gaurav_s_application1/presentation/mouse_screen/mouse_screen.dart';
import 'package:gaurav_s_application1/presentation/shoe_screen/shoe_screen.dart';
import 'package:gaurav_s_application1/presentation/bat_screen/bat_screen.dart';
import 'package:gaurav_s_application1/presentation/nailpoloish_screen/nailpoloish_screen.dart';
import 'package:gaurav_s_application1/presentation/payment_gateway_screen/payment_gateway_screen.dart';
import 'package:gaurav_s_application1/presentation/checkout_screen/checkout_screen.dart';
import 'package:gaurav_s_application1/presentation/checkout_one_screen/checkout_one_screen.dart';
import 'package:gaurav_s_application1/presentation/ordered_screen/ordered_screen.dart';
import 'package:gaurav_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String emailScreen = '/email_screen';

  static const String mailVeriScreen = '/mail_veri_screen';

  static const String infoScreen = '/info_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageTabContainerScreen =
      '/homepage_tab_container_screen';

  static const String catonePage = '/catone_page';

  static const String catoneContainerScreen = '/catone_container_screen';

  static const String cattwoScreen = '/cattwo_screen';

  static const String catthreeScreen = '/catthree_screen';

  static const String catfourScreen = '/catfour_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String mouseScreen = '/mouse_screen';

  static const String shoeScreen = '/shoe_screen';

  static const String batScreen = '/bat_screen';

  static const String nailpoloishScreen = '/nailpoloish_screen';

  static const String paymentGatewayScreen = '/payment_gateway_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String checkoutOneScreen = '/checkout_one_screen';

  static const String orderedScreen = '/ordered_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        splashScreenTwoScreen: SplashScreenTwoScreen.builder,
        loginPageScreen: LoginPageScreen.builder,
        emailScreen: EmailScreen.builder,
        mailVeriScreen: MailVeriScreen.builder,
        infoScreen: InfoScreen.builder,
        signInScreen: SignInScreen.builder,
        homepageTabContainerScreen: HomepageTabContainerScreen.builder,
        catoneContainerScreen: CatoneContainerScreen.builder,
        cattwoScreen: CattwoScreen.builder,
        catthreeScreen: CatthreeScreen.builder,
        catfourScreen: CatfourScreen.builder,
        chatbotScreen: ChatbotScreen.builder,
        mouseScreen: MouseScreen.builder,
        shoeScreen: ShoeScreen.builder,
        batScreen: BatScreen.builder,
        nailpoloishScreen: NailpoloishScreen.builder,
        paymentGatewayScreen: PaymentGatewayScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        checkoutOneScreen: CheckoutOneScreen.builder,
        orderedScreen: OrderedScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
