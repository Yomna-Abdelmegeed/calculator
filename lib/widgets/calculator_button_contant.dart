import 'package:calculator/colors/app_color.dart';
import 'package:flutter/material.dart';

class CalculatorButtonContant extends StatelessWidget {
  CalculatorButtonContant.fromIcon(
      {super.key, this.iconPath = 'icon', this.contantColor = AppColor.pink});
  CalculatorButtonContant.fromText(
      {super.key, required this.text, this.contantColor = AppColor.white});
  Color contantColor;
  String? iconPath;
  String? text;
  @override
  Widget build(BuildContext context) {
    return text != null
        ? Text(text!,
            style: TextStyle(
              fontSize: 32,
              color: contantColor,
            ))
        : ImageIcon(
            AssetImage('images/$iconPath.png'),
            color: contantColor,
          );
  }
}
