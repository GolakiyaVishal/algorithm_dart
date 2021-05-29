class Node {
  /// Single node for LinkedList
  /// attributes
  /// [data] -> node data
  /// [nextNode] -> link to next node

  final dynamic data;
  Node? nextNode;

  Node(this.data);

  @override
  String toString() {
    return 'Node data: $data';
  }
}

class LinkedList {
  Node? head;
  Node? tail;

  //add
  void addTail(dynamic data) {
    if (head == null) {
      head = Node(data);
      return;
    }

    if (tail == null) {
      tail = Node(data);
      head?.nextNode = tail;
      return;
    }

    final newNode = Node(data);
    tail?.nextNode = newNode;
  }
//print
}
