part of home;

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return CustomAppBar(
      arrow: false,
      title: 'Cash Flow',
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.05),
          Obx(() => TotalBalance(
                balance: controller.balance.value,
                // percentage: controller.percentage.value,
              )),
          SizedBox(height: height * .03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => InOut(
                    title: 'Income',
                    cash: controller.income.value,
                    color: Colors.green),
              ),
              Obx(() => InOut(
                  title: 'Outcome',
                  cash: controller.outcome.value,
                  color: Colors.red))
            ],
          ),
          SizedBox(
            height: height * .05,
          ),
          Text(
            'Recent Transaction',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * .03,
          ),
          RecentTransaction(controller: controller),
          SizedBox(
            height: height * .03,
          ),
        ],
      ),
    );
  }
}
