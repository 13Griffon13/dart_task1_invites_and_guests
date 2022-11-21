import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task1_invites/models/guest_list_model/guests_list.dart';

part 'guests_response.freezed.dart';

part 'guests_response.g.dart';

@freezed
class GuestsResponse with _$GuestsResponse {
  factory GuestsResponse(
    int numberOfGuests,
    [@Default(<String>[]) List<String> invitesSrc,]
  ) = _GuestsResponse;

  factory GuestsResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$GuestsResponseFromJson(jsonMap);
}
