import 'package:flutter/material.dart';



class menu extends StatefulWidget {
  String home;
  String contact;
  String month;
  menu({
    super.key,
    required this.home,
    required this.contact,
    required this.month
  });

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
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
            TextButton(child: SizedBox(child: Image.asset(widget.home,fit: BoxFit.fitHeight,),width: 45,height: 45,),onPressed: (){Navigator.pushNamed(context, 'futureTurnsPage');}),
            TextButton(child: SizedBox(child: Image.asset(widget.contact,fit: BoxFit.fitHeight),width: 45,height: 45),onPressed: (){Navigator.pushNamed(context, 'swapPage');}),
            TextButton(child: SizedBox(child:Image.asset(widget.month,fit: BoxFit.fitHeight),width: 45,height: 45),onPressed: (){Navigator.pushNamed(context, 'receivedPage');},)
          ],
        )
    );
  }
}


