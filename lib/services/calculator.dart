

import 'package:task1_invites/models/guest_list_model/guests_list.dart';

class Calculator{



  static int calculate(GuestsList responses){
    int totalPeople = 2;
    for(var element in responses.guests){
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