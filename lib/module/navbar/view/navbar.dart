part of navbar;

class Navbar extends GetView<NavbarController> {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Obx(
              () => controller.pages.elementAt(controller.selectedIndex.value),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AppRoutes.addCashFlowPage);
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(() => StylishBottomBar(
              option: BubbleBarOptions(
                  barStyle: BubbleBarStyle.vertical,
                  inkEffect: true,
                  unselectedIconColor: Colors.grey),
              items: [
                BottomBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                    selectedColor: Colors.black),
                BottomBarItem(
                    icon: Icon(Icons.bar_chart),
                    title: Text('Visual'),
                    selectedColor: Colors.black)
              ],
              currentIndex: controller.selectedIndex.value,
              onTap: (index) {
                controller.selectedItem(index);
              },
              fabLocation: StylishBarFabLocation.center,
              hasNotch: true,
            )),
      ),
    );
  }
}
