
// abstract class Routes {
//   static const String splashRoute = "/";
//   static const String loginRoute = "/login";
//   static const String registerRoute = "/register";
//   static const String forgotPasswordRoute = "/forgotPassword";
//   static const String onBoardingRoute = "/onBoarding";
//   static const String mainRoute = "/main";
//   static const String storeDetailsRoute = "/storeDetails";
// }

// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.splashRoute:
//         return MaterialPageRoute(builder: (_) => const SplashView());
//       case Routes.loginRoute:
//         initLoginModule();
//         return MaterialPageRoute(builder: (_) => const LoginView());
//       case Routes.onBoardingRoute:
//         return MaterialPageRoute(builder: (_) => const OnboardingView());
//       case Routes.registerRoute:
//         initRegisterModule();
//         return MaterialPageRoute(builder: (_) => const RegisterView());
//       case Routes.forgotPasswordRoute:
//         initForgotPasswordModule();
//         return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
//       case Routes.mainRoute:
//         // initHomeModule();
//         return MaterialPageRoute(builder: (_) => const MainView());
//       case Routes.storeDetailsRoute:
//         // initStoreDetailsModule();
//         return MaterialPageRoute(builder: (_) => const StoreDetailsView());
//       default:
//         return unDefinedRoute();
//     }
//   }

//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//         builder: (_) => Scaffold(
//               appBar: AppBar(
//                 title: Text(AppStrings.noRouteFound),
//               ),
//               body: Center(
//                 child: Text(AppStrings.noRouteFound),
//               ),
//             ));
//   }
// }
