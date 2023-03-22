import 'package:flutter/material.dart';
import 'firebase_functions_db.dart' ;
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

                  },
                  child: Text(
                    'כניסה',
                    style: TextStyle(
                      fontFamily: 'Noto Sans Hebrew',
                      fontSize: 25,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
           SizedBox(
              height: 100.0,
            ),
           Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.036, -5.162),
                    end: Alignment(-1.255, 7.254),
                    colors: [const Color(0xff9dcbff), const Color(0xff3e8adf)],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(5, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                margin: EdgeInsets.all(7.0),
                height: 100.0,
                width: double.infinity,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home_outlined,color: Colors.white,size: 45.0,),
                      Icon(Icons.perm_contact_calendar_outlined,color: Colors.white,size: 45.0,),
                      Icon(Icons.calendar_month,color: Colors.white,size: 45.0,)
                    ],
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
