import 'package:get/get.dart';
import 'package:my_resume/view/dashboard.dart';

import '../view/splash_screen.dart';

class RouteHelper {
  static const String initial = "/";
  static const String dashboard = '/dashboard';

  static String getDashboardPage(
    
  ) => '$dashboard';
  static String getInitial() => '$initial';

  

  // static String getPickAddressPage() => '$pickAddressMap';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () => const SplashScreen(),
        transition: Transition.zoom),

    GetPage(
        name: dashboard,
        page: () {
var pageId = Get.parameters['pageId'];
        return  Dashboard(
          
          );
        
        },
        transition: Transition.zoom),

    // GetPage(
    //     name: pickAddressMap,
    //     page: () {
    //       // pass screen or widget
    //       PickAddressMap _pickAddress = Get.arguments;
    //       return const PickAddressMap();
    //     },
    //     transition: Transition.zoom),

    // GetPage(
    //     name: recommendedFood,
    //     page: () {
    //       var pageId = Get.parameters['pageId'];
    //       var page = Get.parameters['page'];
    //       return RecommendedFoodDetails(
    //           pageId: int.parse(pageId.toString()), page: page!);
    //     },
    //     transition: Transition.fadeIn),
  ];
}
