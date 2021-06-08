/// Problem:
///  you are given two non-empty linked list that represent two integers.
///  the digit are sorted in revers order and each node contain a single digit.
///  add the two numbers and return sum as linked list
///
/// Input: l1 = [2,4,3], l2 = [5,6,4]
/// Output: [7,0,8]
/// Explanation: 342 + 465 = 807.

class Node {
  final int value;
  Node? nextNode;

  Node(this.value, {this.nextNode});
}

class AddTwoNumber {
  static Node getSumOfTwo(Node n1, Node n2) {
    final i1 = int.parse(_getOriginalString(n1));
    final i2 = int.parse(_getOriginalString(n2));
    final sum = i1 + i2;
    print('sum :: $sum');
    late Node current;
    sum.toString().split('').forEach((element) {
      var node = Node(int.parse(element));
      if (current != null) {
        node.nextNode = current;
      }
      current = node;
    });

    return current;
  }

  static String _getOriginalString(Node node) {
    String str1 = "";
    Node? current = node;
    while (current?.value != null) {
      str1 = '$str1${current?.value}';
      current = current?.nextNode!;
    }
    print('rev string:: $str1');
    return str1.split('').reversed.join();
  }

  static String printString(Node node) {
    String str1 = "";
    Node? current = node;
    while (current?.value != null) {
      str1 = '$str1${current?.value}';
      current = current?.nextNode!;
    }
    print('string :: $str1');
    return str1;
  }
}
