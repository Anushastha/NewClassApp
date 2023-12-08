import 'package:newclassapp/view/container_view.dart';
import 'package:newclassapp/view/dashboard_nav_view.dart';
import 'package:newclassapp/view/date_time_view.dart';
import 'package:newclassapp/view/expanded_flexible_view.dart';
import 'package:newclassapp/view/grid_view_view.dart';
import 'package:newclassapp/view/image_view.dart';
import 'package:newclassapp/view/list_output_view.dart';
import 'package:newclassapp/view/list_view.dart';
import 'package:newclassapp/view/row_and_column_view.dart';
import 'package:newclassapp/view/splash_view.dart';
import 'package:newclassapp/view/stacks_view.dart';
import 'package:newclassapp/view/student_list_view.dart';

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
  static const String listRoute = '/list';
  static const String studentListRoute = '/studentList';
  static const String studentListAllRoute = '/listOutput';
  static const String expandedRoute = '/expandedFlexible';
  static const String rowAndColumnRoute = '/rowAndColum';
  static const String gridRoute = '/grid';
  static const String stackRoute = '/stack';
  static const String dashboardNavRoute = '/dashboardNav';
  static const String splashRoute = '/splash';
  static const String dateTimeRoute = '/dateTime';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      arithmeticRoute: (context) => const ArithmeticView(),
      ranNumRoute: (context) => const RandomNumber(),
      containerRoute: (context) => const ContainerView(),
      imageRoute: (context) => const ImageView(),
      listRoute: (context) => const ListViews(),
      studentListRoute: (context) => const StudentListView(),
      studentListAllRoute: (context) => const StudentOutputView(),
      expandedRoute: (context) => const ExpandedFlexibleView(),
      rowAndColumnRoute: (context) => const RowAndColumnView(),
      gridRoute: (context) => const GridViewView(),
      stackRoute: (context) => const StacksView(),
      dashboardNavRoute: (context) => const DashboardNavView(),
      splashRoute: (context) => const SplashScreen(),
      dateTimeRoute: (context) => const DateTimeView(),
    };
  }
}
