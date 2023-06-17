import 'package:get/get.dart';

class CalculatorControllers {
  static RxString formularText = '0'.obs;
  static RxString answerText = '0'.obs;

  static RxDouble firstnum = 0.0.obs;
  static RxDouble secondnum = 0.0.obs;
  static RxString result = ''.obs;
  static RxString operation = ''.obs;

  static void handleClick(String value) {
    if (value == 'C') {
      firstnum.value = 0.0;
      secondnum.value = 0.0;
      result.value = '';
      operation.value = '';
      formularText.value = '';
    } else if (value == '+' ||
        value == '-' ||
        value == 'X' ||
        value == '/' ||
        value == '%') {
      firstnum.value = double.parse(answerText.value);
      result.value = '';
      operation.value = value;
    } else if (value == '=') {
      secondnum.value = double.parse(answerText.value);
      if (operation.value == '+') {
        result.value = (firstnum.value + secondnum.value).toString();
        formularText.value = firstnum.value.toString() +
            operation.value.toString() +
            secondnum.value.toString();
      } else if (operation.value == '-') {
        result.value = (firstnum.value - secondnum.value).toString();
        formularText.value = firstnum.value.toString() +
            operation.value.toString() +
            secondnum.value.toString();
      } else if (operation.value == 'X') {
        result.value = (firstnum.value * secondnum.value).toString();
        formularText.value = firstnum.value.toString() +
            operation.value.toString() +
            secondnum.value.toString();
      } else if (operation.value == '/') {
        result.value = (firstnum.value / secondnum.value).toString();
        formularText.value = firstnum.value.toString() +
            operation.value.toString() +
            secondnum.value.toString();
      } else if (operation.value == '%') {
        result.value = (firstnum.value % secondnum.value).toString();
        formularText.value = firstnum.value.toString() +
            operation.value.toString() +
            secondnum.value.toString();
      }
    } else {
      result.value = int.parse(answerText.value + value).toString();
    }
    answerText.value = result.value;
  }
}
