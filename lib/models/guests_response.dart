import 'package:task1_invites/models/guests_list.dart';

class GuestsResponse {
  final int numberOfGuests;
  final List<String> invitesSrc;

  GuestsResponse(this.numberOfGuests, this.invitesSrc);

  factory GuestsResponse.fromJson(Map<String, dynamic> jsonMap) {
    final numberOfGuests = jsonMap["numberOfGuests"] as int;
    final list = jsonMap["guests"] as List<dynamic>;
    return GuestsResponse(
        numberOfGuests, list.map((e) => e as String).toList());
  }
}
