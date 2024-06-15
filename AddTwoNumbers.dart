class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    List<int> l1List = [];
    List<int> l2List = [];
    while (l1 != null) {
      l1List.add(l1.val);
      l1 = l1.next;
    }

    while (l2 != null) {
      l2List.add(l2.val);
      l2 = l2.next;
    }

    List<int> sumList = [];

    int carry = 0;
    int i = 0;
    while (i < l1List.length || i < l2List.length) {
      int sum = carry;
      if (i < l1List.length) {
        sum += l1List[i];
      }
      if (i < l2List.length) {
        sum += l2List[i];
      }
      sumList.add(sum % 10);
      carry = sum ~/ 10;
      i++;
    }

    if (carry > 0) {
      sumList.add(carry);
    }

    ListNode? head = null;
    ListNode? tail = null;
    for (int i = 0; i <= sumList.length - 1; i++) {
      if (head == null) {
        head = ListNode(sumList[i]);
        tail = head;
      } else {
        tail!.next = ListNode(sumList[i]);
        tail = tail.next;
      }
    }

    return head;
  }
}
