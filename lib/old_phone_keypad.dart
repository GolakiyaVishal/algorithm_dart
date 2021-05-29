/// Problem:
/// according to old phone numeric keyboard contain alphabetic, find the subarray with appropriate given number
/// 
/// input: phoneNumber = '3662277'
///        words: ['foo', 'bar', 'baz', 'foobar', 'emo', 'cap', 'car', 'cat']
/// output:['bar', 'cap', 'car', 'emo', 'foo', 'foobar']
///

class OldPhoneKeyboard {

  /// [_numArray] is constant list of number equivalent to alphabets 
  static final _numArray = [
    '2',
    '2',
    '2',
    '3',
    '3',
    '3',
    '4',
    '4',
    '4',
    '5',
    '5',
    '5',
    '6',
    '6',
    '6',
    '7',
    '7',
    '7',
    '7',
    '8',
    '8',
    '8',
    '9',
    '9',
    '9',
    '9',
  ];

  /// [_getNumList] -> convert alphabetic array into numeric array 
  static List<String>? _getNumList(List<String> input) {
    if (input.isEmpty) return null;

    final returnable = <String>[];
    input.forEach((element) {
      var str = "";
      element.runes.forEach((element) {
        str = '$str${_numArray[element - 97]}';
      });
      returnable.add(str);
    });
    return returnable;
  }

  /// [checkList] -> filter the numeric array and return the list of original alphabetic arrays 
  static List<String> checkList(List<String> input, String phoneNo) {
    final returnable = <String>[];
    final numList = _getNumList(input);
    for (var i = 0; i < numList!.length; i++) {
      if (phoneNo.contains(numList[i])) {
        returnable.add(input[i]);
      }
    }
    print(returnable.toString());
    return returnable;
  }
}
