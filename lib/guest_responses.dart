import 'guest.dart';

class GuestResponses {
  final int numberOfGuests;
  final List<Guest> invites;

  GuestResponses({required this.invites, required int numberOfGuests})
      : this.numberOfGuests = numberOfGuests >= 1 || numberOfGuests <= 20
            ? numberOfGuests
            : throw Exception("Invalid number");

  factory GuestResponses.fromJson(Map<String, dynamic> map) {
    var numberOfInvites = map['numberOfGuests'] as int;
    var jsonInvites = map["guests"] as List<dynamic>;
    var invites = jsonInvites.map((element) {
      return Guest.fromJson(element);
    }).toList();
    return GuestResponses(numberOfGuests: numberOfInvites, invites: invites);
  }
}
