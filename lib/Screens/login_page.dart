import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tori/Screens/future_turns_page.dart';
import '../Database/firebase_functions_db.dart';
import 'package:tori/Database/local_firebase_functions.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  String id="";
  String password="";
  db database=db();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff4f5f3),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Expanded(child: Container(height: 180.0,width: 180.0,child: Image(image: AssetImage("images/logo.png"),fit: BoxFit.cover))),
            Container(
              margin: EdgeInsets.all(20.0),
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff9dcbff),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child:Text(
                'התחברות דרך קופ״ח',
                style: TextStyle(
                  fontFamily: 'Noto Sans Hebrew',
                  fontSize: 30,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(5, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x23000000),
                      offset: Offset(3, 3),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                          'תעודת זהות',
                          style: TextStyle(
                            fontFamily: 'Noto Sans Hebrew',
                            fontSize: 20,
                            color: const Color(0xff0a1038),
                          ),
                          textAlign: TextAlign.right
                      ),
                      Container(
                        decoration:BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(5, 3),
                            blurRadius: 6,
                          ),
                        ], color: const Color(0xffffffff)
                        ),
                        child: TextField(
                          onChanged: (id_user){
                            id=id_user;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.5,
                                color: const Color(0xff418fe7),
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'סיסמא',
                        style: TextStyle(
                          fontFamily: 'Noto Sans Hebrew',
                          fontSize: 20,
                          color: const Color(0xff0a1038),
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Container(
                        decoration:BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(5, 3),
                            blurRadius: 6,
                          ),
                        ], color: const Color(0xffffffff)
                        ),
                        child: TextField(
                          obscureText: true,
                          onChanged: (pass){
                            password=pass;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.5,
                                color: const Color(0xff418fe7),
                              ),
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size(220, 50),
                  backgroundColor: const Color(0xff418fe7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 5.0,
                ),
                onPressed: () {
                  // add your onPressed logic here
                },
                child: TextButton(
                  onPressed: ()async{
                    bool res=await database.checkIfUserExists(id, password);
                    print(res);
                    var requests = await database.getUserDocumentId(id);
                    print("right down is the result");
                    print(requests);
                    List<Meeting> meet = await database.getPersonMeetings(requests);
                    Meeting firstMeeting = meet[0];

                    DataHandling data =  DataHandling();
                    List DoctorDocumentId = data.DoctorList(meet);
                    List<String> docs =  await database.DoctorValues(DoctorDocumentId[0]);
                    print("try");
                    print(docs);
                    print("try");


                    print(meet[0].data);
                    print(meet[0].documentId);
                    if(res==true)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  FutureTurnsPage(user_id: id,)));
                      }
                    else{
                      // TODO: ask nisim
                      print("not good");
                    }

                  },
                  child: Text(
                    'כניסה',
                    style: TextStyle(
                      fontFamily: 'Noto SansHebrew ',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120.0,
            ),
          ],
        ),
      ),
    );
  }
}