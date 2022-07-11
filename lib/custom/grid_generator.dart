import 'package:flutter_calculator/calculator_state/index.dart';
import 'package:flutter_calculator/custom/index.dart';

var calculatorGrid = [
  CustomButton.orange(label: "AC", onTap: () => calculator.clean()),
  CustomButton.red(label: "DEL", onTap: () => calculator.delete()),
  CustomButton.blue(label: "%", onTap: () {}),
  CustomButton.blue(label: "÷", onTap: () => calculator.addUserInputClick("/")),
  CustomButton.grey(label: "7", onTap: () => calculator.addUserInputClick("7")),
  CustomButton.grey(label: "8", onTap: () => calculator.addUserInputClick("8")),
  CustomButton.grey(label: "9", onTap: () => calculator.addUserInputClick("9")),
  CustomButton.blue(label: "х", onTap: () => calculator.addUserInputClick("*")),
  CustomButton.grey(label: "4", onTap: () => calculator.addUserInputClick("4")),
  CustomButton.grey(label: "5", onTap: () => calculator.addUserInputClick("5")),
  CustomButton.grey(label: "6", onTap: () => calculator.addUserInputClick("6")),
  CustomButton.blue(label: "-", onTap: () => calculator.addUserInputClick("-")),
  CustomButton.grey(label: "1", onTap: () => calculator.addUserInputClick("1")),
  CustomButton.grey(label: "2", onTap: () => calculator.addUserInputClick("2")),
  CustomButton.grey(label: "3", onTap: () => calculator.addUserInputClick("3")),
  CustomButton.blue(label: "+", onTap: () => calculator.addUserInputClick("+")),
  CustomButton.blue(label: "±", onTap: () {}),
  CustomButton.grey(label: "0", onTap: () => calculator.addUserInputClick("0")),
  CustomButton.blue(label: ",", onTap: () {}),
  CustomButton.blue(label: "=", onTap: () => calculator.result()),
];
