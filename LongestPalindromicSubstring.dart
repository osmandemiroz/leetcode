class Solution {
  String longestPalindrome(String s) {
    if (s.length < 2) {
      return s;
    }

    String res = s[0].toString();

    for (var i = 0; i < s.length - 1; i++) {
      String tmp = helper(s, i, i);
      if (tmp.length > res.length) {
        res = tmp;
      }
      tmp = helper(s, i, i + 1);
      if (tmp.length > res.length) {
        res = tmp;
      }
    }
    return res;
  }

  String helper(String s, int left, int right) {
    while (left >= 0 && right < s.length && s[left] == s[right]) {
      left--;
      right++;
    }
    return s.substring(left + 1, right);
  }
}
