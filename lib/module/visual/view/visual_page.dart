part of visual;

class VisualPage extends StatelessWidget {
  const VisualPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return CustomAppBar(
      arrow: false,
      title: 'Visual',
      column: Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Lottie.asset(
            StringConstant.animationDevelopment,
            width: 300,
            height: 300,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
