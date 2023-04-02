import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 224, 249),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x07000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(9999.0, 9999.0),
                    bottomLeft: Radius.elliptical(9999.0, 9999.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.accessibility_new_rounded,
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Image(
                        image: AssetImage("images/logoForLending.png"),
                      ),
                    ),
                  ),
                ],
              ),
              // ignore: use_full_hex_values_for_flutter_colors
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    'להחליף תור מעולם לא היה פשוט יותר',
                    style: TextStyle(
                      fontFamily: 'Noto Sans Hebrew',
                      fontSize: 36,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      backgroundColor: Color(0xfff418fe7),
                      minimumSize: Size(184.0, 49.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.pushNamed(context, 'loginPage')
                    },
                    child: Text(
                      'בואו נתחיל',
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
                SizedBox(
                  height: 15,
                ),
                IconButton(
                  onPressed: () => print('lang'),
                  icon: Icon(Icons.language),
                ),
                Text(
                  'Language',
                  style: TextStyle(
                    fontFamily: 'Assistant',
                    fontSize: 15,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}