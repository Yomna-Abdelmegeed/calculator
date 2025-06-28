import 'package:calculator/controller/controller.dart';
import 'package:calculator/theme/app_theme.dart';
import 'package:calculator/view/widgets/calculator_button.dart';
import 'package:calculator/view/widgets/calculator_button_contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Controller c = Get.put(Controller());
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white,
            style: BorderStyle.none,
            strokeAlign: BorderSide.strokeAlignOutside),
        image: DecorationImage(
            image: AssetImage('images/background.jpeg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.centerRight,
                    child: Obx(
                      () => Text(
                        c.result.value,
                        style: TextStyle(color: AppColor.pink, fontSize: 48),
                      ),
                    )),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                    text: 'Ac',
                                    contantColor: AppColor.pink,
                                  ),
                                  backgroundColor: AppColor.white,
                                  onClike: () => c.onAC(),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromIcon(),
                                  backgroundColor: AppColor.white,
                                  onClike: () => c.onDelet(),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '/'),
                                  backgroundColor: AppColor.pink,
                                  onClike: () => c.onOperClicke(operator: '/'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '7'),
                                  onClike: () => c.onNumClicke(num: '7'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '8'),
                                  onClike: () => c.onNumClicke(num: '8'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '9'),
                                  onClike: () => c.onNumClicke(num: '9'),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '4'),
                                  onClike: () => c.onNumClicke(num: '4'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '5'),
                                  onClike: () => c.onNumClicke(num: '5'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '6'),
                                  onClike: () => c.onNumClicke(num: '6'),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '1'),
                                  onClike: () => c.onNumClicke(num: '1'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '2'),
                                  onClike: () => c.onNumClicke(num: '2'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '3'),
                                  onClike: () => c.onNumClicke(num: '3'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CalculatorButton(
                                  flex: 2,
                                  chid: CalculatorButtonContant.fromText(
                                      text: '0'),
                                  onClike: () => c.onNumClicke(num: '0'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '.'),
                                  onClike: () => c.onDot(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CalculatorButton(
                            flex: 3,
                            chid: CalculatorButtonContant.fromText(
                              text: '*',
                            ),
                            backgroundColor: AppColor.pink,
                            onClike: () => c.onOperClicke(operator: '*'),
                          ),
                          CalculatorButton(
                            flex: 3,
                            chid: CalculatorButtonContant.fromText(text: '-'),
                            backgroundColor: AppColor.pink,
                            onClike: () => c.onOperClicke(operator: '-'),
                          ),
                          CalculatorButton(
                            flex: 4,
                            chid: CalculatorButtonContant.fromText(text: '+'),
                            backgroundColor: AppColor.pink,
                            onClike: () => c.onOperClicke(operator: '+'),
                          ),
                          CalculatorButton(
                            flex: 5,
                            chid: CalculatorButtonContant.fromText(text: '='),
                            backgroundColor: AppColor.pink,
                            onClike: () => c.equalOperator(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
