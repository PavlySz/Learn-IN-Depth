import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/session_list_item.dart';
import 'package:learn_in_depth/pages/template_part_page.dart';

class AutoPage extends StatefulWidget {
  @override
  AutoPageState createState() => AutoPageState();
}

class AutoPageState extends State<AutoPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String partTitle = 'Automotive';
  String iconPath = 'assets/designs/automotive.png';
  @override
  Widget build(BuildContext context) {
    return PartPageTemplate(
      partTitle: partTitle,
      scaffoldKey: scaffoldKey,
      sessionList: ListView(
        children: <Widget>[
          SessionListItem(
            sessionName: 'Automotive Handbook',
            route: 'AHandbook',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 1',
            route: 'A1',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 2',
            route: 'A2',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 3',
            route: 'A3',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 4',
            route: 'A4',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 5',
            route: 'A5',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 6',
            route: 'A6',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 7',
            route: 'A7',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 8',
            route: 'A8',
            iconPath: iconPath,
          ),
        ],
      ),
    );
  }
}
