import 'package:algorithm_dart/leetcode/add_two_number.dart';
import 'package:test/test.dart';

void main(){
  test('add two number test 1', () {
    var n1 = Node(3);
    var n2 = Node(4, nextNode: n1);
    var n3 = Node(2, nextNode: n2);

    var p1 = Node(4);
    var p2 = Node(6, nextNode: p1);
    var p3 = Node(5, nextNode: p2);

    final ans = AddTwoNumber.getSumOfTwo(n3, p3);
    expect(AddTwoNumber.printString(ans),
        AddTwoNumber.printString(Node(7, nextNode: Node(0, nextNode: Node(8)))));
  });
}