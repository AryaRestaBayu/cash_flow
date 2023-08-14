part of home;

class InOut extends StatelessWidget {
  const InOut({
    super.key,
    required this.title,
    required this.cash,
    required this.color,
  });

  final String title;
  final String cash;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: height * .10,
        width: width * 0.40,
        decoration: BoxDecoration(
          color: color.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.005,
            left: width * 0.015,
            right: width * .015,
            bottom: height * .005,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * .03,
                ),
              ),
              SizedBox(
                height: height * .005,
              ),
              Text(
                'Rp$cash',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * .04,
                ),
              ),
              SizedBox(
                height: height * 0.006,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  size: width * 0.05,
                  Icons.arrow_outward,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
