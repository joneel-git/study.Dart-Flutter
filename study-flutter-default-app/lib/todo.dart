


import 'package:flutter/foundation.dart';

class MyClass with ChangeNotifier {

  int counting = 0; //set variable

  int get i  { //this is the returning function myclass.i

    return counting;     //get variable     
  }
  increment () {
    counting += 1;
   notifyListeners();  //setState
  }

  decrement () {
    counting -= 1;
    notifyListeners();
  }

}