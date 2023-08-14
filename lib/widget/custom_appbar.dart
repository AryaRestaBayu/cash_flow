import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.arrow,
    required this.title,
    required this.column,
  });

  final String title;
  final Column column;
  final bool arrow;

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(
              top: height * .03, left: width * .05, right: width * .05),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    arrow == true
                        ? IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back))
                        : SizedBox(),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: width * 0.06, fontWeight: FontWeight.bold),
                    ),
                    arrow == true ? SizedBox(width: width * .12) : SizedBox(),
                  ],
                ),
                column,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
