import 'dart:convert';

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
}

//task1
void fromString(String string){
  var parsedResponse = GuestResponses.fromFormattedString(string);
  print('String total sum is: ${Calculator.calculate(parsedResponse)}');
}

//task3
void fromJson(String jsonInput){
  var decodedJson = jsonDecode(jsonInput);
  var parsedResponse = GuestResponses.fromJson(decodedJson);
  print('JSON total sum is: ${Calculator.calculate(parsedResponse)}');
}