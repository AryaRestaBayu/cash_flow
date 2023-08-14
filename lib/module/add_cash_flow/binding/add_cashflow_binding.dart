part of add_cash_flow;

class AddCashFlowBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<AddCashFlowController>(AddCashFlowController());
  }
}
