import 'dart:collection';
import 'dart:convert';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../guest_model/guest.dart';

part 'guests_list.freezed.dart';
part 'guests_list.g.dart';

@freezed
class GuestsList with _$GuestsList {
  factory GuestsList.create({required guests, required int numberOfGuests}) {
    return GuestsList.freezed(
        numberOfGuests >= 1 || numberOfGuests <= 20
            ? numberOfGuests
            : throw Exception("Invalid number"),
        guests);
  }

  factory GuestsList.freezed(int numberOfGuests, List<Guest> guests) =
      _GuestList;

  factory GuestsList.fromFormattedString(String string) {
    List<String> list = string.split("\n");
    int numberOfGuests = int.parse(list.first);
    list.removeAt(0);
    List<Guest> guests = list.map((e) {
      return Guest.fromFormattedString(e);
    }).toList();
    return GuestsList.create(guests: guests, numberOfGuests: numberOfGuests);
  }

  factory GuestsList.fromJson(Map<String, dynamic> json) =>
      _$GuestsListFromJson(json);

  factory GuestsList.random() {
    final numberOfGuests = Random().nextInt(20);
    var guests = <Guest>[];
    for (int i = 0; i < numberOfGuests; i++) {
      guests.add(Guest.random());
    }
    return GuestsList.create(guests: guests, numberOfGuests: numberOfGuests);
  }
}
