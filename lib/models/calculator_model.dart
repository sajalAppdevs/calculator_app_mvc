class CalculatorModel {
  double _num1 = 0;
  double _num2 = 0;
  String _operator = '';
  String result = '0';

  // Set the number inputs
  void setNumber(String num) {
    if (_operator.isEmpty) {
      _num1 = double.tryParse(num) ?? 0;
    } else {
      _num2 = double.tryParse(num) ?? 0;
    }
  }

  // Set the operator (+, -, *, /)
  void setOperator(String operator) {
    _operator = operator;
  }

  // Perform calculation based on the operator
  void calculate() {
    switch (_operator) {
      case '+':
        result = (_num1 + _num2).toString();
        break;
      case '-':
        result = (_num1 - _num2).toString();
        break;
      case '*':
        result = (_num1 * _num2).toString();
        break;
      case '/':
        result = (_num2 != 0) ? (_num1 / _num2).toString() : 'Error';
        break;
      default:
        result = '0';
        break;
    }
  }

  // Clear all data
  void clear() {
    _num1 = 0;
    _num2 = 0;
    _operator = '';
    result = '0';
  }
}
