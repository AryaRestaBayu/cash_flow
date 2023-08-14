part of add_cash_flow;

class AddCashFlowController extends GetxController {
  final listJenisTransaksi = <String>['Masuk', 'Keluar'];
  final selectedValue = 'Masuk'.obs;
  final nominalController = TextEditingController();
  final alasanController = TextEditingController();
  final cashFlowApi = CashFlowApi();
  DateTime tanggalSekarang = DateTime.now();
  final homePageController = Get.find<HomePageController>();

  void changeSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }

  void postData() async {
    String tanggal =
        '${tanggalSekarang.year}-${tanggalSekarang.month.toString().padLeft(2, '0')}-${tanggalSekarang.day.toString().padLeft(2, '0')}';
    print(tanggal);

    final cashFlow = CashFlow(
        jenis_transaksi: selectedValue.value.toLowerCase(),
        nominal: int.parse(nominalController.text),
        tanggal: tanggal,
        alasan: alasanController.text);

    print(cashFlow);

    await cashFlowApi.postCashFlow(cashFlow);

    Get.back();
    await homePageController.initCashFlow();
  }
}
