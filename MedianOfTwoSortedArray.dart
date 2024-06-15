class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List sumArray = nums1 + nums2;
    sumArray.sort();
    if (sumArray.length % 2 == 0) {
      return (sumArray[sumArray.length ~/ 2 - 1] +
              sumArray[sumArray.length ~/ 2]) /
          2.0;
    } else {
      return sumArray[sumArray.length ~/ 2] * 1.0;
    }
  }
}
