import 'dart:convert';
import 'dart:io';

import 'package:task1_invites/services/calculator.dart';
import 'package:task1_invites/services/file_reader.dart';

import 'models/guest.dart';
import 'models/guests_list.dart';

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

  fromFile("lib/mockup_data/response.json"); //will finish last cause of returning Future<void>
  fromString(stringInput);
  fromJson(jsonInput);
  randomGenerated('lib/generated_data');
}

//task1
void fromString(String string) {
  var parsedResponse = GuestsList.fromFormattedString(string);
  print('String total sum is: ${Calculator.calculate(parsedResponse)}');
}

//task3
void fromJson(String jsonInput) {
  var decodedJson = jsonDecode(jsonInput);
  var parsedResponse = GuestsList.fromJson(decodedJson);
  print('JSON total sum is: ${Calculator.calculate(parsedResponse)}');
}

//task2
void fromFile(String path) async {
  final response = await FileReader.getResponse(path);
  final guests = await FileReader.getGuests(response.invitesSrc);
  print('AsyncFile total sum is: ${Calculator.calculate(
    GuestsList(
      guests: guests,
      numberOfGuests: response.numberOfGuests,
    ),
  )}');
}

//additional task
void randomGenerated(String dir) async{
  await FileReader.writeGuestList(GuestsList.random(), dir);
  final response = await FileReader.getResponse('$dir/response.json');
  final guests = await FileReader.getGuests(response.invitesSrc);
  print('RandomlyGenerated total sum is: ${Calculator.calculate(
    GuestsList(
      guests: guests,
      numberOfGuests: response.numberOfGuests,
    ),
  )}');
}
