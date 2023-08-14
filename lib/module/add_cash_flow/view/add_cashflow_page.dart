part of add_cash_flow;

class AddCashFlowPage extends GetView<AddCashFlowController> {
  const AddCashFlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return CustomAppBar(
      arrow: true,
      title: 'Add Cash Flow',
      column: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.20,
                ),
                DropdownJenis(
                  width: width,
                  height: height,
                  controller: controller,
                ),
                SizedBox(
                  height: height * .03,
                ),
                CustomTextField(
                    inputType: TextInputType.number,
                    inputAction: TextInputAction.next,
                    textController: controller.nominalController,
                    hint: 'Nominal',
                    prefixIcon: Icons.attach_money_outlined),
                SizedBox(
                  height: height * .03,
                ),
                CustomTextField(
                    textController: controller.alasanController,
                    hint: 'Alasan',
                    prefixIcon: Icons.question_mark_outlined),
                SizedBox(
                  height: height * .06,
                ),
                OutlinedButton(
                  onPressed: () {
                    controller.postData();
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(width * 0.50, height * 0.07),
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
