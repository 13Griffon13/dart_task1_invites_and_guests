import 'dart:collection';
import 'dart:convert';
import 'dart:math';

import 'guest.dart';

class GuestsList {
  final int numberOfGuests;
  final List<Guest> guests;

  GuestsList({required this.guests, required int numberOfGuests})
      : this.numberOfGuests = numberOfGuests >= 1 || numberOfGuests <= 20
            ? numberOfGuests
            : throw Exception("Invalid number");

  factory GuestsList.fromFormattedString(String string) {
    List<String> list = string.split("\n");
    int numberOfGuests = int.parse(list.first);
    list.removeAt(0);
    List<Guest> guests = list.map((e) {
      return Guest.fromFormattedString(e);
    }).toList();
    return GuestsList(guests: guests, numberOfGuests: numberOfGuests);
  }

  factory GuestsList.fromJson(Map<String, dynamic> map) {
    var numberOfInvites = map['numberOfGuests'] as int;
    var jsonInvites = map["guests"] as List<dynamic>;
    var invites = jsonInvites.map((element) {
      return Guest.fromJson(element);
    }).toList();
    return GuestsList(numberOfGuests: numberOfInvites, guests: invites);
  }

  factory GuestsList.random(){
    final numberOfGuests = Random().nextInt(20);
    var guests = <Guest>[];
    for(int i=0;i<numberOfGuests;i++){
      guests.add(Guest.random());
    }
    return GuestsList(guests: guests, numberOfGuests: numberOfGuests);
  }

  Map toJson() {
    final jsonGuests = guests.map((e) => e.toJson()).toList();
    return {
      "numberOfGuests": numberOfGuests,
      "guests": jsonGuests,
    };
  }



}
