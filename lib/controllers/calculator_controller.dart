import '../models/calculator_model.dart';

class CalculatorController {
  final CalculatorModel _model = CalculatorModel();

  // Handles the button press event
  void onButtonPressed(String buttonText) {
    if (_isOperator(buttonText)) {
      _model.setOperator(buttonText);
    } else if (buttonText == '=') {
      _model.calculate();
    } else if (buttonText == 'C') {
      _model.clear();
    } else {
      _model.setNumber(buttonText);
    }
  }

  // Get the display text
  String getDisplayText() {
    return _model.result;
  }

  // Helper method to check if a button is an operator
  bool _isOperator(String buttonText) {
    return ['+', '-', '*', '/'].contains(buttonText);
  }
}
