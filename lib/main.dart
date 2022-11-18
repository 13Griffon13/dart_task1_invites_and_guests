import 'dart:convert';
import 'dart:io';

import 'package:task1_invites/calculator.dart';

import 'guest.dart';
import 'guest_responses.dart';

void main() {
  String stringInput = '6\n'
      'Ban\n'
      'John\n'
      'Karen\n'
      'Jen+one\n'
      'Mike+one\n'
      'Nick+one';
  print("String input is:\n$stringInput");

  String jsonInput = '{"numberOfGuests": 3, "guests":['
      '{"name":"JoeQWEASDZXCQWEASDZ", "withFriend":true},'
      '{"name":"Ben"},'
      '{"name":"Sally", "withFriend":true}'
      ']}';
  print("JSON input is:\n$jsonInput");

  fromString(stringInput);
  fromJson(jsonInput);
  fromFile("lib/mockup_data/response.json");
}

//task1
void fromString(String string) {
  var parsedResponse = GuestResponses.fromFormattedString(string);
  print('String total sum is: ${Calculator.calculate(parsedResponse)}');
}

//task3
void fromJson(String jsonInput) {
  var decodedJson = jsonDecode(jsonInput);
  var parsedResponse = GuestResponses.fromJson(decodedJson);
  print('JSON total sum is: ${Calculator.calculate(parsedResponse)}');
}

//task2
void fromFile(String path) async {
  final responseFileRef = File(path);
  final responseContent = await responseFileRef.readAsString();
  final decodedResponse = jsonDecode(responseContent);
  final listOfGuestSource = decodedResponse["guests"] as List<dynamic>;
  var inviteRequests = <Future<String>>[];
  for (var element in listOfGuestSource) {
    inviteRequests.add(File(element as String).readAsString());
  }
  final guests = await Future.wait(inviteRequests).then((value) {
    return value.map((e) => Guest.fromJson(jsonDecode(e))).toList();
  });
  final parsedResponse = GuestResponses(
      invites: guests,
      numberOfGuests: decodedResponse["numberOfGuests"] as int);
  print('Async total sum is: ${Calculator.calculate(parsedResponse)}');
}
