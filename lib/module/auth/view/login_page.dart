part of auth;

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return CustomAppBar(
        arrow: false,
        title: 'Login Page',
        column: Column(
          children: [
            SizedBox(
              height: height * 0.20,
            ),
            CustomTextField(
              textController: controller.emailController,
              hint: 'Email',
              prefixIcon: Icons.email,
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,
            ),
            SizedBox(
              height: height * .02,
            ),
            CustomTextField(
                textController: controller.passwordController,
                hint: 'Password',
                prefixIcon: Icons.lock),
            SizedBox(
              height: height * .03,
            ),
            OutlinedButton(
              onPressed: () {
                controller.login();
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(width * 0.50, height * 0.07),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            )
          ],
        ));
  }
}
