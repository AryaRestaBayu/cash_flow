part of auth;

class LoginPageController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final baseUrl = StringConstant.baseUrl;

  Future login() async {
    final user =
        User(email: emailController.text, password: passwordController.text);

    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final token = responseData['token'];
      print(responseData);
      await SecureStorageService.writeAuthToken(
          key: StringConstant.authToken, value: token);
      Get.offAllNamed(AppRoutes.navbar);
    } else {
      throw Exception('Failed to login ${response.statusCode}');
    }
  }
}
