import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'line_separator.dart';
import 'main_result.dart';

class MathResult extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();

  MathResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((() => Column(
          children: [
            SubResult(text: calculatorCtrl.firstNumber.value),
            SubResult(text: calculatorCtrl.operation.value),
            SubResult(text: calculatorCtrl.secondtNumber.value),
            LineSeparator(),
            MainResultText(text: calculatorCtrl.mathResult.value),
          ],
        )));
  }
}
