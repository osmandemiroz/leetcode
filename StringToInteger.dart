import 'dart:math';

class Solution {
  int myAtoi(String s) {
    int MAX_VALUE = pow(-2, 31).toInt();

    int MIN_VALUE = -pow(2, 31).toInt();

    int result = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == ' ') {
        continue;
      } else if (s[i] == '-') {
        if (result == 0) {
          result = -1;
        } else {
          break;
        }
      } else if (s[i] == '+') {
        if (result == 0) {
          result = 1;
        } else {
          break;
        }
      } else if (s[i].hashCode >= '0'.hashCode &&
          s[i].hashCode <= '9'.hashCode) {
        if (result == 0) {
          result = s[i].codeUnitAt(0) - '0'.codeUnitAt(0);
        } else {
          result = result * 10 + (s[i].codeUnitAt(0) - '0'.codeUnitAt(0));
        }
      }
    }
    return max(min(result, MAX_VALUE), MIN_VALUE);
  }
}
