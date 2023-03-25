import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

IconData calendar_today = IconData(0xe122, fontFamily: 'MaterialIcons');
const String _svg_qcrh9k =
    '<svg viewBox="324.9 381.6 47.1 53.8" ><path transform="translate(324.9, 381.58)" d="M 37.0103645324707 13.45831394195557 C 37.0103645324707 20.89192962646484 30.98566818237305 26.91662788391113 23.45742225646973 26.91662788391113 C 16.11843490600586 26.91662788391113 9.999106407165527 20.89192962646484 9.999106407165527 13.45831394195557 C 9.999106407165527 6.025749683380127 16.11843490600586 -3.188759478689462e-07 23.45742225646973 -3.188759478689462e-07 C 30.98566818237305 -3.188759478689462e-07 37.0103645324707 6.025749683380127 37.0103645324707 13.45831394195557 Z M 30.18657875061035 38.06179809570312 C 27.37925910949707 38.80831146240234 25.13971138000488 41.44740676879883 25.13971138000488 44.58066558837891 L 25.13971138000488 47.10410690307617 C 25.13971138000488 47.54570388793945 25.4130802154541 47.97679138183594 25.72851181030273 48.29221343994141 L 27.41080284118652 49.97451019287109 C 28.06268882751465 50.63690948486328 29.1351490020752 50.63690948486328 29.78703308105469 49.97451019287109 C 30.44943809509277 49.32262420654297 30.44943809509277 48.25016021728516 29.78703308105469 47.59827423095703 L 28.5042896270752 46.41015625 L 28.5042896270752 44.58066558837891 C 28.5042896270752 42.71963500976562 30.10246276855469 41.21609115600586 31.86886978149414 41.21609115600586 C 33.82452774047852 41.21609115600586 35.32807922363281 42.71963500976562 35.32807922363281 44.58066558837891 L 35.32807922363281 46.41015625 L 34.13996124267578 47.59827423095703 C 33.47755813598633 48.25016021728516 33.47755813598633 49.32262420654297 34.13996124267578 49.97451019287109 C 34.79184722900391 50.63690948486328 35.86430358886719 50.63690948486328 36.51619338989258 49.97451019287109 L 38.19848251342773 48.29221343994141 C 38.51390838623047 47.97679138183594 38.69265747070312 47.54570388793945 38.69265747070312 47.10410690307617 L 38.69265747070312 44.58066558837891 C 38.69265747070312 41.44740676879883 36.54773330688477 38.80831146240234 33.64579010009766 38.06179809570312 L 33.64579010009766 32.46818542480469 C 41.37380599975586 34.35024261474609 47.10410690307617 41.22660446166992 47.10410690307617 49.62754058837891 L 47.10410690307617 50.46868515014648 C 47.10410690307617 52.32971572875977 45.60055923461914 53.83325576782227 43.73952484130859 53.83325576782227 L 3.364578485488892 53.83325576782227 C 1.506700277328491 53.83325576782227 -7.971898696723656e-08 52.32971572875977 -7.971898696723656e-08 50.46868515014648 L -7.971898696723656e-08 49.62754058837891 C -7.971898696723656e-08 41.32123184204102 5.733451843261719 34.35024261474609 13.45831394195557 32.46818542480469 L 13.45831394195557 38.93448257446289 C 11.02950954437256 39.65996932983398 9.252591133117676 41.91003036499023 9.252591133117676 44.58066558837891 C 9.252591133117676 47.82959365844727 11.89168262481689 50.46868515014648 15.14060306549072 50.46868515014648 C 18.38952445983887 50.46868515014648 21.02861785888672 47.82959365844727 21.02861785888672 44.58066558837891 C 21.02861785888672 41.91003036499023 19.2516975402832 39.65996932983398 16.82289505004883 38.93448257446289 L 16.82289505004883 31.98452758789062 C 17.10677909851074 31.9740104675293 17.38015556335449 31.96349906921387 17.66403961181641 31.96349906921387 L 29.44006538391113 31.96349906921387 C 29.72395324707031 31.96349906921387 29.99731826782227 31.9740104675293 30.28120613098145 31.98452758789062 L 30.18657875061035 38.06179809570312 Z M 17.56941032409668 44.58066558837891 C 17.56941032409668 45.97907257080078 16.53900909423828 47.10410690307617 15.04597568511963 47.10410690307617 C 13.74220085144043 47.10410690307617 12.52254009246826 45.97907257080078 12.52254009246826 44.58066558837891 C 12.52254009246826 43.18226623535156 13.74220085144043 42.05723571777344 15.04597568511963 42.05723571777344 C 16.53900909423828 42.05723571777344 17.56941032409668 43.18226623535156 17.56941032409668 44.58066558837891 Z" fill="#434242" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

class ReceivedRequestsPageNew extends StatelessWidget {
  const ReceivedRequestsPageNew({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xfff4f5f3), // Set the background color to black
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: Container(
                    height: 180.0,
                    width: 180.0,
                    child: Image(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.cover))),
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
              child: Text(
                'ניהול בקשות החלפה',
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
            Text(
              "התור הנבחר להחלפה",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text("תורים עתידיים 3",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                color: Colors.white,
                child: Scrollbar(
                  thickness: 10,
                  isAlwaysShown: true,
                  child: ListView(
                    children: [
                      ListReceivedRequest("Alon", "Alon", "Alon"),
                      ListReceivedRequest("Alon", "Alon", "Alon"),
                      ListReceivedRequest("Alon", "Alon", "Alon"),
                      ListReceivedRequest("Alon", "Alon", "Alon"),
                      ListReceivedRequest("Alon", "Alon", "Alon"),
                      ListReceivedRequest("Alon", "Alon", "Alon"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120.0,
            ),
            Flexible(
              child: Container(
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
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 45.0,
                      ),
                      Icon(
                        Icons.perm_contact_calendar_outlined,
                        color: Colors.white,
                        size: 45.0,
                      ),
                      Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 45.0,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ListReceivedRequest extends StatelessWidget {
  ListReceivedRequest(String user_name, String user_pro, String user_loc) {
    name = user_name;
    profession = user_pro;
    loc = user_loc;
  }
  String? name;
  String? profession;
  String? loc;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("אישור", style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff418fe7)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: TextButton(
                onPressed: () {},
                child: Text("סירוב", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 197, 39, 37)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Icon(calendar_today, size: 24, color: Colors.black)),
          ],
        ),
        trailing: SvgPicture.string(
          _svg_qcrh9k,
          allowDrawingOutsideViewBox: true,
          fit: BoxFit.fill,
        ),
        title: Text(
          name!,
          textAlign: TextAlign.right,
        ),
        subtitle: Text(textAlign: TextAlign.right, profession! + '\n' + loc!),
        isThreeLine: true,
      ),
    );
  }
}
