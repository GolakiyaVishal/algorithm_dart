import 'package:algorithm_dart/old_phone_keypad.dart';
import 'package:test/test.dart';

void main() {
  test('check phone number in array', () {
    final list = OldPhoneKeyboard.checkList(
        ['foo', 'bar', 'baz', 'foobar', 'emo', 'cap', 'car', 'cat'], '3662277');
    expect(list, ['foo', 'bar', 'foobar', 'emo', 'cap', 'car']);
  });
}