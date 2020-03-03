import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/session_list_item.dart';
import 'package:learn_in_depth/pages/template_part_page.dart';

class EmbeddedLinuxPage extends StatefulWidget {
  @override
  EmbeddedLinuxPageState createState() => EmbeddedLinuxPageState();
}

class EmbeddedLinuxPageState extends State<EmbeddedLinuxPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://www.dropbox.com/home/Kerolos%20Karam/embedded_linux?preview=Embedded_LINUX_part1_v1.pdf';
  String iconPath = 'assets/designs/linux.png';
  @override
  Widget build(BuildContext context) {
    return PartPageTemplate(
      partTitle: partTitle,
      scaffoldKey: scaffoldKey,
      sessionList: ListView(
        children: <Widget>[
          SessionListItem(
            sessionName: 'Session 1',
            route: 'EL1',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 2',
            route: 'EL2',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 3',
            route: 'EL3',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 4',
            route: 'EL4',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 5',
            route: 'EL5',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 6',
            route: 'EL6',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 7',
            route: 'EL7',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 8',
            route: 'EL8',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 9',
            route: 'EL9',
            iconPath: iconPath,
          ),
          SessionListItem(
            sessionName: 'Session 10',
            route: 'EL10',
            iconPath: iconPath,
          ),
        ],
      ),
    );
  }
}
