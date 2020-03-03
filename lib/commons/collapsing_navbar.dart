import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:learn_in_depth/model/navigation_model.dart';
import 'package:learn_in_depth/my_clipper.dart';
import 'package:url_launcher/url_launcher.dart';

// Collapsable NavBar
class CollapsingNavBar extends StatefulWidget {
  @override
  _CollapsingNavBarState createState() => _CollapsingNavBarState();
}

class _CollapsingNavBarState extends State<CollapsingNavBar> {
  bool isHomePressed = false;

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  sendEmail() async {
    const address = 'eng.keroles.karam@gmail.com';
    const subject = 'INSERT SUBJECT HERE';
    const body = 'INSERT BODY HERE';
    const url = 'mailto:$address?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  callNumber() async {
    const url = 'tel:01226061780';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: Container(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: ClippingClass(),
              child: Container(
                height: 260.0,
                color: Colors.grey[200],
                child: DrawerHeader(
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/kerolos.png'),
                            radius: 40,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Kerolos \nShenouda',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () =>
                                  launchURL('https://www.learn-in-depth.com/'),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.open_in_new),
                                  SizedBox(width: 10),
                                  Text(
                                    'learn-IN-depth',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue.shade700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () => sendEmail(),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.mail_outline),
                                  SizedBox(width: 10),
                                  Text(
                                    'E-mail',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue.shade700,
                                      // color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Number
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () => callNumber(),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.phone_android),
                                  SizedBox(width: 10),
                                  Text(
                                    '0122-606-1780',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue.shade700,
                                      // color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // LinkedIn
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () => launchURL(
                                  'https://www.linkedin.com/in/keroles-karam-khalil-2a86057b/'),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.linkedin,
                                    size: 25,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'LinkedIn',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue.shade700,
                                      // color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Facebook group
                            SizedBox(height: 10.0),
                            InkWell(
                              onTap: () => launchURL(
                                  'https://www.facebook.com/groups/embedded.system.KS/'),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.facebook,
                                    size: 25,
                                    color: Colors.blue.shade900,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Facebook group',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.lightBlue.shade700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(data[index]),
                itemCount: data.length,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            // Back button
            InkWell(
              onTap: () {
                setState(() {
                  isHomePressed = true;
                });
                Get.toNamed('/');
              },
              child: Icon(
                Icons.home,
                color: isHomePressed ? Colors.lightBlue[900] : Colors.white70,
                size: 40.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
