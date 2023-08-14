part of add_cash_flow;

class DropdownJenis extends StatelessWidget {
  const DropdownJenis({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });

  final double width;
  final double height;
  final AddCashFlowController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.70,
      height: height * 0.07,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Obx(
        () => DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            borderRadius: BorderRadius.circular(10),
            value: controller.selectedValue.value,
            items: controller.listJenisTransaksi.map((value) {
              return DropdownMenuItem(
                  value: value,
                  child:
                      Align(alignment: Alignment.center, child: Text(value)));
            }).toList(),
            onChanged: (newValue) {
              controller.changeSelectedValue(newValue as String);
            },
          ),
        ),
      ),
    );
  }
}
