part of home;

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.cashFlow,
    required this.controller,
  });

  final MapEntry<int, CashFlow> cashFlow;
  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    final double width = Get.width;
    final double height = Get.height;
    final nominal = controller.changeFormat(cashFlow.value.nominal);
    return Container(
      width: width,
      height: height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cashFlow.value.alasan,
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: width * .041),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                cashFlow.value.jenis_transaksi == "masuk"
                    ? '+ Rp$nominal'
                    : '- Rp$nominal',
                style: TextStyle(
                  fontSize: width * .040,
                  color: cashFlow.value.jenis_transaksi == "masuk"
                      ? Colors.green
                      : Colors.red,
                ),
              ),
              Text(
                cashFlow.value.tanggal,
                style:
                    TextStyle(color: Colors.grey[600], fontSize: width * .0350),
              ),
            ],
          )
        ],
      ),
    );
  }
}
