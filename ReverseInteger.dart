import 'dart:math';

class Solution {
  int reverse(int x) {
    if (x >= minValue && x <= maxValue) {
      int result = 0;
      int sign = x < 0 ? -1 : 1;
      x = sign * x;
      while (x != 0) {
        result = result * 10 + x % 10;
        x ~/= 10;
      }

      if (result >= minValue && result <= maxValue) {
        return sign * result;
      }
      return 0;
    } else {
      return 0;
    }
  }

  ///minimum 32 byte integer
  static int minValue = pow(-2, 31).toInt();

  ///maximum 32 byte integer
  static int maxValue = pow(2, 31).toInt() - 1;
}
