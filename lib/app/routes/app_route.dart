import 'package:newclassapp/view/container_view.dart';
import 'package:newclassapp/view/image_view.dart';

import '../../view/arithmetic_view.dart';
import '../../view/dashboard_view.dart';
import '../../view/output_view.dart';
import '../../view/random_number.dart';

class AppRoute {
  //private constructor
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String ranNumRoute = '/randomNum';
  static const String containerRoute = '/containerRoute';
  static const String imageRoute = '/imageView';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      arithmeticRoute: (context) => const ArithmeticView(),
      ranNumRoute: (context) => const RandomNumber(),
      containerRoute: (context) => const ContainerView(),
      imageRoute: (context) => const ImageView(),
    };
  }
}
