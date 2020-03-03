import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/collapsing_navbar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../my_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UsefulPage extends StatefulWidget {
  @override
  _UsefulPageState createState() => _UsefulPageState();
}

class _UsefulPageState extends State<UsefulPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CollapsingNavBar(),
      drawerDragStartBehavior: DragStartBehavior.start,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Stack(
              children: <Widget>[
                // Blue container
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 200.0,
                    height: 140.0,
                    color: Color.fromRGBO(58, 66, 86, 1.0),
                  ),
                ),
                // Drawer
                Positioned(
                  left: 10,
                  top: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 40.0,
                      // color: Color.fromRGBO(64, 75, 96, .9),
                      color: Colors.white,
                    ),
                    onPressed: () => scaffoldKey.currentState.openDrawer(),
                  ),
                ),
                // Ceh
                // Positioned(
                //   top: 25,
                //   left: 100,
                //   child: Transform.rotate(
                //     angle: 75.12,
                //     child: Image.asset(
                //       'assets/images/car.png',
                //     ),
                //   ),
                // ),
                // 'Useful links'
                Positioned(
                  left: 80,
                  top: 50,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      'Useful Links',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () => launchURL('https://www.learn-in-depth.com/arm'),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.open_in_new),
                  SizedBox(width: 10),
                  Text(
                    'Microprocessor-Based Systems',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.lightBlue.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          InkWell(
            onTap: () =>
                launchURL('https://www.learn-in-depth.com/understanding-linux'),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.open_in_new),
                  SizedBox(width: 10),
                  Text(
                    'Understanding Linux',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.lightBlue.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          InkWell(
            onTap: () => launchURL(
                'https://www.youtube.com/channel/UCOG-qluwZnKIzDicdc0R_Rg/videos?fbclid=IwAR3syvRgKQxFqPJg77Xx6oczykHquLM-kcvotp6EWYEuhAcLivF_GB-6s7M'),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'AUTOSAR in Arabic',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.lightBlue.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          InkWell(
            onTap: () => launchURL(
                'https://www.youtube.com/playlist?list=PLVxBVAdu4pn7UTHjmslHicZiYtyRbxs6z&fbclid=IwAR3y-lrHoO0_a6_zVAtOZ3H6kmQVZAYn47VOTJqQKpP5meWCbkXEP8v1vO0'),
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'RTOS in Arabic',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.lightBlue.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
