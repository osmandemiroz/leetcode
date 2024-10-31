class Solution {
  int numJewelsAndStones(String jewels, String stones) {
    int count;
    count = 0;
    for (int i = 0; i < jewels.length; i++) {
      for (int j = 0; j < stones.length; j++) {
        if (jewels[i] == stones[j]) {
          count++;
        }
      }
    }
    return count;
  }
}
