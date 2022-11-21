import 'dart:convert';
import 'dart:io';

import 'package:task1_invites/models/guest_model/guest.dart';
import 'package:task1_invites/models/guest_list_model/guests_list.dart';
import 'package:task1_invites/models/guest_response_model/guests_response.dart';

class FileReader {
  static Future<GuestsResponse> getResponse(String url) async {
    final responseFileRef = File(url);
    final responseContent = await responseFileRef.readAsString();
    return GuestsResponse.fromJson(jsonDecode(responseContent));
  }

  static Future<List<Guest>> getGuests(List<String> urls) async {
    var inviteRequests = <Future<String>>[];
    for (var element in urls) {
      inviteRequests.add(File(element).readAsString());
    }
    return await Future.wait(inviteRequests).then((value) {
      return value.map((e) => Guest.fromJson(jsonDecode(e))).toList();
    });
  }

  static Future<bool> writeGuestList(GuestsList guestsList, String url) async {
    final dir = Directory(url);
    if (dir.existsSync()) {
      dir.deleteSync(recursive: true);
    }
    dir.createSync();
    var guestsSrc = <String>[];
    for (var element in guestsList.guests) {
      final file = File('$url/${element.name}.json');
      guestsSrc.add(file.path);
      if (file.existsSync()) {
        throw Exception('Two users with exact same names');
      } else {
        file.createSync();
      }
      file.writeAsString(jsonEncode(element.toJson()));
    }
    final responseFile = File('$url/response.json');
    responseFile.createSync();
    responseFile.writeAsString(
        jsonEncode(GuestsResponse(guestsList.numberOfGuests, guestsSrc)));
    return true;
  }
}
