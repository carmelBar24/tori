import 'package:tori/Screens/future_turns_page.dart';
import 'package:tori/Screens/received_requests_page.dart';
import 'firebase_options.dart';
import 'firebase_functions_db.dart';

class DataHandling{
  DataHandling();


  List DoctorList(List<Meeting> meetings){
    Doctor shay =  const Doctor("shay", "physiatric" , "Gedera");
    print(meetings[0].data);
    List doctorsPersonal = [];
    for(Meeting meet in meetings){
      doctorsPersonal.add(meet.data['Doctor']);
    }
    print(doctorsPersonal);
    return doctorsPersonal;
  }




}