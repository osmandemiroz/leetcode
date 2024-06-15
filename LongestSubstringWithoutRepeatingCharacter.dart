class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.length == 0) {
      return 0;
    }
    Map<String, int> map = {};
    int max = 0;
    int start = 0;
    for (int i = 0; i < s.length; i++) {
      if (map.containsKey(s[i])) {
        start = Math.max(map[s[i]], start);
      }
      map[s[i]] = i + 1;
      max = Math.max(max, i - start + 1);
    }
    return max;
  }
}

class Math {
  static int max(int? a, int? b) {
    return a! > b! ? a : b;
  }
}
