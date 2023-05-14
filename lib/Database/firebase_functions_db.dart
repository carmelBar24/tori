import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:tori/Screens/received_requests_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tori/Screens/future_turns_page.dart';


 class db {
   db() {
     initConnection();
   }

   final firestore = FirebaseFirestore.instance;
   var auth=FirebaseAuth.instance;

   Future checkIfUserExists(String id, String password) async {
     print(id);
     print(password);

     var data = await firestore
         .collection("Users")
         .where("ID", isEqualTo: id)
         .where("Password", isEqualTo: password)
         .get();

     if (data.docs.isNotEmpty) {
       // User exists and password matches
       print("User exists and password matches");
     } else {
       // User does not exist or password is incorrect
       print("User does not exist or password is incorrect");
     }
     return data.docs.isNotEmpty;
   }

   void initConnection() async {
     WidgetsFlutterBinding.ensureInitialized();
     // Initialize Firebase
     await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform,
     );
   }

   Future getAppointments() async {
     final user=auth.currentUser?.uid;
     print(user);
     final docRef = await firestore.collection("Future Queues").where("Id",isEqualTo: user).get();
       print("Successfully completed");
       for (var docSnapshot in docRef.docs) {
         print('${docSnapshot.id} => ${docSnapshot.data()}');
       }
       return docRef.docs;
   }

   Future getOthersAppointments(profession) async
   {
     final user=auth.currentUser?.uid;
     final docRef = await firestore.collection("Future Queues").where("Id",isNotEqualTo: user).where("Profession",isEqualTo: profession).get();
     print("Successfully completed");
     for (var docSnapshot in docRef.docs) {
       print('${docSnapshot.id} => ${docSnapshot.data()}');
     }
     return docRef.docs;
   }

   Future swapTurns(senderToken,receiverToken,profession,senderCity,receiverCity,senderDoctor,receiverDoctor)
    async{
     final swap = <String, String>{
       "SenderToken":senderToken,
       "ReceiverToken": receiverToken,
       "Profession": profession,
       "SenderCity":senderCity,
       "ReceiverCity":receiverCity,
       "SenderDoctorName":senderDoctor,
       "ReceiverDoctorName":receiverDoctor
     };
     await firestore.collection("Sent Requests").add(swap);

   }
   Future getUserDocumentId(String id) async {
     final docRef = await firestore.collection("Users").where(
         "ID", isEqualTo: id).get();
     if (docRef.size == 1) {
       return docRef.docs.first.id;
     }
     else {
       return null;
     }
   }


   Future<List<String>> DoctorValues(String link) async{
     final docRef = await firestore.collection("Doctors").where(
         FieldPath.documentId, isEqualTo: link).get();
     String name = docRef.docs[0].data()['DoctorName'];
     String city = docRef.docs[0].data()['City'];
     String profession = docRef.docs[0].data()['Profession'];

     List<String> doctorVals = [name, city, profession ];
     return doctorVals;
   }

   Future<List<Meeting>> getPersonMeetings(String documentPatientId) async {
     final docRef = await firestore.collection("Meetings").where(
         "Patient", isEqualTo: documentPatientId).get();
     List<Meeting> meetings = [];

     for (var docSnapshot in docRef.docs) {
       meetings.add(Meeting(docSnapshot.id, docSnapshot.data()));
     }

     return meetings;
   }

 }

 class Meeting{
   final String documentId;
   final Map<String, dynamic> data;
   Meeting(this.documentId, this.data);

 }
