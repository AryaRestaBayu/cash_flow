part of navbar;

class NavbarBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<NavbarController>(NavbarController());
  }
}
