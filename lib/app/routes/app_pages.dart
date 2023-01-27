import 'package:dashboard/app/modules/dashboard_page/bindings/dashboard_page_binding.dart';
import 'package:dashboard/app/modules/dashboard_page/views/dashboard_page_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD_PAGE;

  static final routes = <GetPage>[
    GetPage(
      name: _Paths.DASHBOARD_PAGE,
      page: () => const DashboardPageView(),
      binding: DashboardPageBinding(),
    ),
  ];
}
