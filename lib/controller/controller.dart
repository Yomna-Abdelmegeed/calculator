import 'package:get/get.dart';

class Controller extends GetxController {
  RxString result = '0.0'.obs;
  String LHS = '';
  String oper = '';
  String RHS = '';
  String onScreen = '';

  void onNumClicke({required String num}) {
    if (onScreen.isEmpty && num == '0') {
      result.value = '0.0';
    } else {
      onScreen += num;
      result.value = onScreen;
    }
  }

  void onDot() {
    if (!onScreen.contains('.')) {
      onScreen += '.';
      result.value = onScreen;
    }
  }

  void onDelet() {
    onScreen = onScreen.substring(0, onScreen.length - 1);
    result.value = onScreen;
  }

  void onOperClicke({required String operator}) {
    if (oper == '') {
      oper = operator;
      LHS = result.value;
      //   result = '';
      onScreen = '';
    } else {
      RHS = result.value;
      LHS = calculat(lhs: LHS, op: oper, rhs: RHS);
      oper = operator;
      result.value = LHS;
      onScreen = '';
    }
  }

  void onAC() {
    LHS = '';
    oper = '';
    RHS = '';
    result.value = '0.0';
    onScreen = '';
  }

  void equalOperator() {
    RHS = result.value;
    result.value = calculat(lhs: LHS, op: oper, rhs: RHS);
    LHS = result.value;
    oper = '';
    onScreen = '';
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
