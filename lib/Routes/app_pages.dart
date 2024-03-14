import 'package:get/get.dart';
import 'package:testing_task/APP/VIEW/Your_Appointments.dart';
import 'package:testing_task/APP/VIEW/search_view.dart';
import 'package:testing_task/APP/VIEW/sepilization.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.appointments,
      page: () => const Appointments(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(
        () {
          Get.lazyPut<Appointments>(
            () => const Appointments(),
          );
        },
      ),
    ),
    GetPage(
      name: AppRoutes.specilization,
      page: () => const Specilization(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {}),
    ),
    GetPage(
      name: AppRoutes.searchView,
      page: () => const SearchView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {}),
    ),
  ];
}
