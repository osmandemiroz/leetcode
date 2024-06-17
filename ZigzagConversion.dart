class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) {
      return s;
    }
    List<List<String>> rows = List.generate(numRows, (_) => []);
    int curRow = 0;
    bool goingDown = false;
    for (int i = 0; i < s.length; i++) {
      rows[curRow].add(s[i]);
      if (curRow == 0 || curRow == numRows - 1) {
        goingDown = !goingDown;
      }
      curRow += goingDown ? 1 : -1;
    }
    String ret = "";
    for (List<String> row in rows) {
      ret += row.join();
    }
    return ret;
  }
}
