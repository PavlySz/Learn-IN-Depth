import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/session_list_item.dart';
import 'package:learn_in_depth/pages/template_part_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String partTitle = 'Introduction to \nEmbedded Systems';
  String iconPath = 'assets/designs/intro.png';
  @override
  Widget build(BuildContext context) {
    return PartPageTemplate(
      partTitle: partTitle,
      scaffoldKey: scaffoldKey,
      sessionList: ListView(
        children: <Widget>[
          SessionListItem(
            sessionName: 'Introduction to \nEmbedded Systems',
            route: 'intro',
            iconPath: iconPath,
          ),
        ],
      ),
    );
  }
}
