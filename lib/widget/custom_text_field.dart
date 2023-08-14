import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textController,
    this.obscure,
    this.visible,
    this.ontap,
    required this.hint,
    required this.prefixIcon,
    this.inputType,
    this.inputAction,
  }) : super(key: key);

  final TextEditingController textController;
  final bool? obscure;
  final bool? visible;
  final VoidCallback? ontap;
  final String hint;
  final IconData prefixIcon;
  final TextInputType? inputType;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    double sizeWidth = Get.width;
    double sizeHeight = Get.height;
    return Container(
      width: sizeWidth * .70,
      height: sizeHeight * .08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      padding: EdgeInsets.only(
        left: sizeWidth * .03,
        right: sizeWidth * .03,
      ),
      child: TextField(
          textInputAction: inputAction,
          keyboardType: inputType,
          controller: textController,
          cursorColor: Colors.black,
          obscureText: obscure ?? false,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                TextStyle(color: Colors.black, fontSize: sizeWidth * .04),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.black,
              size: sizeWidth * .07,
            ),
            suffixIcon: visible != null
                ? GestureDetector(
                    onTap: ontap,
                    child: Icon(
                        visible == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.black,
                        size: sizeWidth * .07),
                  )
                : null,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              vertical: sizeHeight * 0.025,
            ),
          )),
    );
  }
}
