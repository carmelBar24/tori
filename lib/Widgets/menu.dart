import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.036, -5.162),
            end: Alignment(-1.255, 7.254),
            colors: [
              const Color(0xff9dcbff),
              const Color(0xff3e8adf)
            ],
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
        margin: EdgeInsets.all(20.0),
        height: 80.0,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(child: Icon(Icons.home_outlined,color: Colors.white,size: 45.0,),onPressed: (){Navigator.pushNamed(context, 'futureTurnsPage');}),
            TextButton(child: Icon(Icons.perm_contact_calendar_outlined,color: Colors.white,size: 45.0,),onPressed: (){Navigator.pushNamed(context, 'swapPage');}),
            TextButton(child: Icon(Icons.calendar_month,color: Colors.white,size: 45.0,),onPressed: (){Navigator.pushNamed(context, 'receivedPage');},)
          ],
        )
    );
  }
}