part of home;

class TotalBalance extends StatelessWidget {
  const TotalBalance({
    super.key,
    required this.balance,
    // required this.percentage,
  });

  final String balance;
  // final String percentage;

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: height * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Balance',
                style: TextStyle(
                    fontSize: width * .05, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp $balance',
                    style: TextStyle(fontSize: width * 0.04),
                  ),
                  // Text(
                  //   percentage,
                  //   style:
                  //       TextStyle(color: Colors.green, fontSize: width * .04),
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
