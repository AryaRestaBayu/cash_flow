part of home;

class HomePageController extends GetxController {
  final cashFlowApi = CashFlowApi();
  final listCashFlow = <CashFlow>[].obs;

  RxString balance = '0'.obs;
  RxString income = '0'.obs;
  RxString outcome = '0'.obs;
  // RxString percentage = '0.0%'.obs;

  @override
  void onInit() {
    initCashFlow();
    super.onInit();
  }

  Future<void> initCashFlow() async {
    final list = await cashFlowApi.getCashFlow();
    listCashFlow.clear();
    listCashFlow.addAll(list);
    print('cash controller $listCashFlow');

    int keluar = calculateTotal("keluar");
    int masuk = calculateTotal("masuk");
    int totalBalance = masuk - keluar;
    balance.value = changeFormat(totalBalance);
    outcome.value = changeFormat(keluar);
    income.value = changeFormat(masuk);

    // double persentase =
    //     calculatePercentage(nilaiAwal: 1, nilaiAkhir: totalBalance);
    // print(persentase);
    // percentage.value = persentase.toStringAsFixed(2) + '%';
    // print(percentage.value);
  }

  int calculateTotal(String jenis_transaksi) {
    int total = 0;
    for (var cashFlow in listCashFlow) {
      if (cashFlow.jenis_transaksi == jenis_transaksi) {
        total += cashFlow.nominal;
      }
    }
    print('ini total $total');
    return total;
  }

  String changeFormat(int nominal) {
    final formated = NumberFormat('#,###.###').format(nominal);
    return formated;
  }

  // double calculatePercentage(
  //     {required int nilaiAwal, required int nilaiAkhir}) {
  //   double persentase = ((nilaiAkhir - nilaiAwal) / nilaiAwal) * 100;
  //   return persentase;
  // }
}
