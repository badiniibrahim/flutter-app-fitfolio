import 'package:fitfolio/modules/detail/binding.dart/detail_binding.dart';
import 'package:fitfolio/modules/detail/views/detail_view.dart';
import 'package:fitfolio/modules/home/bindings/home_bindings.dart';
import 'package:fitfolio/modules/home/views/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
  ];
}
