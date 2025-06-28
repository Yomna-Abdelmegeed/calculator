import 'package:calculator/theme/app_theme.dart';
import 'package:calculator/view/widgets/calculator_button.dart';
import 'package:calculator/view/widgets/calculator_button_contant.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = '0.0';

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
          title: Text(
            'just a calculator',
            style: TextStyle(
                color: AppColor.pink,
                fontWeight: FontWeight.bold,
                fontSize: 32),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: TextStyle(color: AppColor.pink, fontSize: 48),
                  ),
                ),
              ),
              Expanded(
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
                                  onClike: () => onAC(),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromIcon(),
                                  backgroundColor: AppColor.white,
                                  onClike: () => onDelet(),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '/'),
                                  backgroundColor: AppColor.pink,
                                  onClike: () => onOperClicke(operator: '/'),
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
                                  onClike: () => onNumClicke(num: '7'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '8'),
                                  onClike: () => onNumClicke(num: '8'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '9'),
                                  onClike: () => onNumClicke(num: '9'),
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
                                  onClike: () => onNumClicke(num: '4'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '5'),
                                  onClike: () => onNumClicke(num: '5'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '6'),
                                  onClike: () => onNumClicke(num: '6'),
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
                                  onClike: () => onNumClicke(num: '1'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '2'),
                                  onClike: () => onNumClicke(num: '2'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '3'),
                                  onClike: () => onNumClicke(num: '3'),
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
                                  onClike: () => onNumClicke(num: '0'),
                                ),
                                CalculatorButton(
                                  chid: CalculatorButtonContant.fromText(
                                      text: '.'),
                                  onClike: () => onDot(),
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
                        children: [
                          CalculatorButton(
                            flex: 3,
                            chid: CalculatorButtonContant.fromText(
                              text: '*',
                            ),
                            backgroundColor: AppColor.pink,
                            onClike: () => onOperClicke(operator: '*'),
                          ),
                          CalculatorButton(
                            flex: 3,
                            chid: CalculatorButtonContant.fromText(text: '-'),
                            backgroundColor: AppColor.pink,
                            onClike: () => onOperClicke(operator: '-'),
                          ),
                          CalculatorButton(
                            flex: 4,
                            chid: CalculatorButtonContant.fromText(text: '+'),
                            backgroundColor: AppColor.pink,
                            onClike: () => onOperClicke(operator: '+'),
                          ),
                          CalculatorButton(
                            flex: 5,
                            chid: CalculatorButtonContant.fromText(text: '='),
                            backgroundColor: AppColor.pink,
                            onClike: () => equalOperator(),
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

  String LHS = '';
  String oper = '';
  String RHS = '';
  String onScreen = '';

  void onNumClicke({required String num}) {
    setState(() {
      onScreen += num;
      result = onScreen;
    });
  }

  void onDot() {
    if (!onScreen.contains('.')) {
      onScreen += '.';
      result = onScreen;
    }
    setState(() {});
  }

  void onDelet() {
    onScreen = onScreen.substring(0, onScreen.length - 1);
    result = onScreen;
    setState(() {});
  }

  void onOperClicke({required String operator}) {
    if (oper == '') {
      oper = operator;
      LHS = result;
      result = '';
      onScreen = '';
    } else {
      if (result == '') {
        RHS = LHS;
      } else {
        RHS = result;
      }
      LHS = calculat(lhs: LHS, op: oper, rhs: RHS);
      oper = operator;
      result = LHS;
      setState(() {});
      onScreen = '';
    }
  }

  void onAC() {
    LHS = '';
    oper = '';
    RHS = '';
    result = '0.0';
    onScreen = '';
    setState(() {});
  }

  void equalOperator() {
    RHS = result;
    result = calculat(lhs: LHS, op: oper, rhs: RHS);
    LHS = result;
    oper = '';
    onScreen = '';
    setState(() {});
  }

  String calculat(
      {required String lhs, required String op, required String rhs}) {
    if (op == '+') {
      return ((double.parse(lhs) + double.parse(rhs)).toString());
    } else if (op == '-') {
      return ((double.parse(lhs) - double.parse(rhs)).toString());
    } else if (op == '*') {
      return ((double.parse(lhs) * double.parse(rhs)).toString());
    } else if (op == '/') {
      return ((double.parse(lhs) / double.parse(rhs)).toString());
    } else {
      return rhs;
    }
  }
}
