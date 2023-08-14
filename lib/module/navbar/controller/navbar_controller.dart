part of navbar;

class NavbarController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final pages = const [
    HomePage(),
    VisualPage(),
  ];

  void selectedItem(int index) {
    selectedIndex.value = index;
  }
}
