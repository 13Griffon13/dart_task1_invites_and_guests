

import 'package:task1_invites/guest_responses.dart';

class Calculator{



  static int calculate(GuestResponses responses){
    int totalPeople = 2;
    for(var element in responses.invites){
      totalPeople++;
      if(element.withFriend){
        totalPeople++;
      }
    }

    if(totalPeople ==13){
      totalPeople++;
    }
    return totalPeople*100;
  }
}