import 'dart:convert';
import 'dart:math';

class Guest {
  final String name;
  final bool withFriend;

  Guest(String name, bool? withFriend)
      : this.name = RegExp('^([a-zA-Z]){1,20}\$').hasMatch(name)
            ? name
            : throw Exception("Invalid name"),
        this.withFriend = withFriend ?? false;

  factory Guest.fromFormattedString(String string) {
    var subString = string.split("+");
    var name = subString.first;
    var withFriend = !(subString.last == subString.first);
    return Guest(name, withFriend);
  }

  factory Guest.fromJson(Map<String, dynamic> map) {
    String name = map["name"] as String;
    bool? withFriend = map["withFriend"] as bool?;
    return Guest(name, withFriend);
  }

  Map toJson() {
    return {
      "name": name,
      "withFriend": withFriend,
    };
  }

  factory Guest.random() {
    final name = _randomName(1+Random().nextInt(19));
    final withFriend = Random().nextBool();
    return Guest(name, withFriend);
  }

  static String _randomName(int length) {
    final chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(Random().nextInt(chars.length))));
  }
}
