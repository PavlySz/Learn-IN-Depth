import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/session_list_item.dart';
import 'package:learn_in_depth/pages/template_part_page.dart';

class EmbeddedCPage extends StatefulWidget {
  @override
  _EmbeddedCPageState createState() => _EmbeddedCPageState();
}

class _EmbeddedCPageState extends State<EmbeddedCPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String partTitle = 'Embedded C';
String dropboxLink = 'https://www.dropbox.com/home/Kerolos%20Karam/Embedded%20C?preview=C_Programming+-session1.pdf';
  String iconPath = 'assets/designs/C.png';
  @override
  Widget build(BuildContext context) {
    return PartPageTemplate(
      partTitle: partTitle,
      scaffoldKey: scaffoldKey,
      sessionList: ListView(
        children: <Widget>[
          SessionListItem(
            sessionName: 'Session 1',
            route: 'C1',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 2',
            route: 'C2',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 3',
            route: 'C3',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 4',
            route: 'C4',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 5',
            route: 'C5',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 6',
            route: 'C6',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 7',
            route: 'C7',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 8',
            route: 'C8',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 9',
            route: 'C9',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 10',
            route: 'C10',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Tools',
            route: 'CTools',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Revision',
            route: 'CR',
            iconPath: iconPath,
          ),
        ],
      ),
    );
  }
}
