import 'dart:convert';

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
  List<String> list = string.split("\n");
  int numberOfGuests = int.parse(list.first);
  list.removeAt(0);
  List<Guest> guests = list.map((e){
    return Guest.fromFormattedString(e);
  }).toList();

  int totalPeople = 2;
  var parsedResponse = GuestResponses(invites: guests, numberOfGuests: numberOfGuests);

  for(var element in parsedResponse.invites){
    totalPeople++;
    if(element.withFriend){
      totalPeople++;
    }
  }

  if(totalPeople ==13){
    totalPeople++;
  }

  print('String total sum is: ${totalPeople*100}');
}

//task3
void fromJson(String jsonInput){
  int totalPeople = 2;

  var decodedJson = jsonDecode(jsonInput);
  var parsedResponse = GuestResponses.fromJson(decodedJson);

  for(var element in parsedResponse.invites){
    totalPeople++;
    if(element.withFriend){
      totalPeople++;
    }
  }

  if(totalPeople ==13){
    totalPeople++;
  }

  print('JSON total sum is: ${totalPeople*100}');
}