import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/session_list_item.dart';
import 'package:learn_in_depth/pages/template_part_page.dart';

class MCPage extends StatefulWidget {
  @override
  MCPageState createState() => MCPageState();
}

class MCPageState extends State<MCPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://www.dropbox.com/home/Kerolos%20Karam/Microcontroller?preview=Microcontroller_PART_1.pdf';
  String iconPath = 'assets/designs/microprocessor.png';
  @override
  Widget build(BuildContext context) {
    return PartPageTemplate(
      partTitle: partTitle,
      scaffoldKey: scaffoldKey,
      sessionList: ListView(
        children: <Widget>[
          SessionListItem(
            sessionName: 'Session 1',
            route: 'MC1',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 2',
            route: 'MC2',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 3',
            route: 'MC3',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 4',
            route: 'MC4',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 5',
            route: 'MC5',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 6',
            route: 'MC6',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 7',
            route: 'MC7',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 8',
            route: 'MC8',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 9',
            route: 'MC9',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 10',
            route: 'MC10',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Notes 1',
            route: 'MCN1',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Notes 2',
            route: 'MCN2',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Revision',
            route: 'MCR',
            iconPath: iconPath,
          ),
        ],
      ),
    );
  }
}
