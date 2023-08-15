part of home;

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({
    super.key,
    required this.controller,
  });

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    final double width = Get.width;
    final double height = Get.height;
    return Obx(() => Stack(
          children: [
            Center(
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: width * 0.88,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Column(
                      children: controller.listCashFlow
                          .asMap()
                          .entries
                          .map((cashFlow) => Column(
                                children: [
                                  CustomListTile(
                                    cashFlow: cashFlow,
                                    controller: controller,
                                  ),
                                  SizedBox(
                                    width: width,
                                    height: 0,
                                    child: Divider(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
