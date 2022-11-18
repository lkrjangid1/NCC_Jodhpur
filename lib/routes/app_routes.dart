import 'package:ncc/presentation/welcome_screen/welcome_screen.dart';
import 'package:ncc/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:ncc/presentation/splash_screen/splash_screen.dart';
import 'package:ncc/presentation/splash_screen/binding/splash_binding.dart';
import 'package:ncc/presentation/mobile_screen/mobile_screen.dart';
import 'package:ncc/presentation/mobile_screen/binding/mobile_binding.dart';
import 'package:ncc/presentation/otp_screen/otp_screen.dart';
import 'package:ncc/presentation/otp_screen/binding/otp_binding.dart';
import 'package:ncc/presentation/home_screen/home_screen.dart';
import 'package:ncc/presentation/home_screen/binding/home_binding.dart';
import 'package:ncc/presentation/about_screen/about_screen.dart';
import 'package:ncc/presentation/about_screen/binding/about_binding.dart';
import 'package:ncc/presentation/why_ncc_screen/why_ncc_screen.dart';
import 'package:ncc/presentation/why_ncc_screen/binding/why_ncc_binding.dart';
import 'package:ncc/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ncc/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String welcomeScreen = '/welcome_screen';

  static String splashScreen = '/splash_screen';

  static String mobileScreen = '/mobile_screen';

  static String otpScreen = '/otp_screen';

  static String homeScreen = '/home_screen';

  static String aboutScreen = '/about_screen';

  static String whyNccScreen = '/why_ncc_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: mobileScreen,
      page: () => MobileScreen(),
      bindings: [
        MobileBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [
        AboutBinding(),
      ],
    ),
    GetPage(
      name: whyNccScreen,
      page: () => WhyNccScreen(),
      bindings: [
        WhyNccBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
