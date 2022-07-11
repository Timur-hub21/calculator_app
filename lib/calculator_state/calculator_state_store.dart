import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calculator_state_store.g.dart';

class CalculatorState extends _CalculatorState with _$CalculatorState {
  CalculatorState();
}

abstract class _CalculatorState with Store {
  Parser parser = Parser();
  ContextModel contextModel = ContextModel();
  @observable
  String userInput = "";

  @observable
  String answer = "";

  @action
  void clean() {
    userInput = "";
  }

  @action
  void delete() {
    userInput = userInput.substring(0, userInput.length - 1);
  }

  @action
  void addUserInputClick(String inputChar) {
    userInput += inputChar;
  }

  @action
  void result() {
    Expression exp = parser.parse(userInput);
    answer = exp.evaluate(EvaluationType.REAL, contextModel).toString();
  }
}
