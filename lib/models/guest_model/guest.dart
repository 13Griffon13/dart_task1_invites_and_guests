import 'dart:convert';
import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest.freezed.dart';

part 'guest.g.dart';

@freezed
class Guest with _$Guest {
  factory Guest.create(String name, bool? withFriend) {
    return Guest.freezed(
        RegExp('^([a-zA-Z]){1,20}\$').hasMatch(name)
            ? name
            : throw Exception("Invalid name"),
        withFriend ?? false);
  }

  factory Guest.freezed(String name, [@Default(false) bool withFriend]) =
      _Guest;

  factory Guest.fromFormattedString(String string) {
    var subString = string.split("+");
    var name = subString.first;
    var withFriend = !(subString.last == subString.first);
    return Guest.create(name, withFriend);
  }

  factory Guest.fromJson(Map<String, dynamic> json) => _$GuestFromJson(json);

  factory Guest.random() {
    final name = _randomName(1 + Random().nextInt(19));
    final withFriend = Random().nextBool();
    return Guest.create(name, withFriend);
  }

  static String _randomName(int length) {
    final chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(Random().nextInt(chars.length))));
  }
}
