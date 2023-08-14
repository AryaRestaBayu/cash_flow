import 'package:cash_flow/module/add_cash_flow/library_cash_flow.dart';
import 'package:cash_flow/module/auth/library_auth.dart';
import 'package:cash_flow/module/home/library_home.dart';
import 'package:cash_flow/module/navbar/library_navbar.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginPage = '/loginPage';
  static const String navbar = '/navbar';
  static const String addCashFlowPage = '/addCashFlowPage';

  static List<GetPage> routes = [
    GetPage(
      name: loginPage,
      page: () => const LoginPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: navbar,
      page: () => const Navbar(),
      bindings: [
        NavbarBinding(),
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: addCashFlowPage,
      page: () => AddCashFlowPage(),
      binding: AddCashFlowBinding(),
    ),
  ];
}
