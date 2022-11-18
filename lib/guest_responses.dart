import 'guest.dart';

class GuestResponses {
  final int numberOfGuests;
  final List<Guest> invites;

  GuestResponses({required this.invites, required int numberOfGuests})
      : this.numberOfGuests = numberOfGuests >= 1 || numberOfGuests <= 20
            ? numberOfGuests
            : throw Exception("Invalid number");

  factory GuestResponses.fromFormattedString(String string){
    List<String> list = string.split("\n");
    int numberOfGuests = int.parse(list.first);
    list.removeAt(0);
    List<Guest> guests = list.map((e){
      return Guest.fromFormattedString(e);
    }).toList();
    return GuestResponses(invites: guests, numberOfGuests: numberOfGuests);
  }

  factory GuestResponses.fromJson(Map<String, dynamic> map) {
    var numberOfInvites = map['numberOfGuests'] as int;
    var jsonInvites = map["guests"] as List<dynamic>;
    var invites = jsonInvites.map((element) {
      return Guest.fromJson(element);
    }).toList();
    return GuestResponses(numberOfGuests: numberOfInvites, invites: invites);
  }
}
