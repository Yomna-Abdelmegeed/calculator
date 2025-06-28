import 'package:calculator/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton(
      {super.key,
      this.flex = 1,
      required this.chid,
      this.backgroundColor = AppColor.babyPink,
      required this.onClike});
  int flex;
  Color backgroundColor;
  Widget chid;
  Function onClike;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, bottom: 16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.symmetric(vertical: 8),
              backgroundColor: backgroundColor),
          onPressed: () => onClike(),
          child: chid,
        ),
      ),
    );
  }
}
