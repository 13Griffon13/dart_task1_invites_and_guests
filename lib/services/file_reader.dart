
import 'dart:convert';
import 'dart:io';

import 'package:task1_invites/models/guest.dart';
import 'package:task1_invites/models/guests_response.dart';

class FileReader{

  static Future<GuestsResponse> getResponse(String url) async{
    final responseFileRef = File(url);
    final responseContent = await responseFileRef.readAsString();
    return GuestsResponse.fromJson(jsonDecode(responseContent));
  }

  static Future<List<Guest>> getGuests(List<String> urls)async{
    var inviteRequests = <Future<String>>[];
    for (var element in urls) {
      inviteRequests.add(File(element).readAsString());
    }
    return await Future.wait(inviteRequests).then((value) {
      return value.map((e) => Guest.fromJson(jsonDecode(e))).toList();
    });
  }

}