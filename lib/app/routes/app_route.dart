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

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      arithmeticRoute: (context) => const ArithmeticView(),
      ranNumRoute: (context) => const RandomNumber()
    };
  }
}
