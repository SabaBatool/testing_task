import 'package:get/get.dart';
import 'package:testing_task/APP/VIEW/browse_all_doctors_view.dart';
import 'package:testing_task/APP/VIEW/filter_doctor%20_search_view.dart';
import 'package:testing_task/APP/VIEW/searchdoctor.dart';
import 'package:testing_task/APP/VIEW/your_appointments.dart';
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
    GetPage(
      name: AppRoutes.browseAllDoctors,
      page: () => const BrowseAllDoctors(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {}),
    ),
    GetPage(
      name: AppRoutes.filterDoctorSearchView,
      page: () => const FilterDoctorSearchView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {}),
    ),
    GetPage(
      name: AppRoutes.searchDoctor,
      page: () => const SearchDoctor(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {}),
    ),
  ];
}
