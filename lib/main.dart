import 'package:cash_flow/constant/string_constant.dart';
import 'package:cash_flow/routes.dart';
import 'package:cash_flow/service/secure_stroage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final token =
      await SecureStorageService.readAuthToken(StringConstant.authToken);
  print(token);
  runApp(MyApp(
    token: token,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.token});

  final String? token;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: token == null ? AppRoutes.loginPage : AppRoutes.navbar,
      getPages: AppRoutes.routes,
    );
  }
}
