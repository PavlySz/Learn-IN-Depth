import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/session_list_item.dart';
import 'package:learn_in_depth/pages/template_part_page.dart';

class TVPage extends StatefulWidget {
  @override
  TVPageState createState() => TVPageState();
}

class TVPageState extends State<TVPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String partTitle = 'Testing and\nValidation';
  String iconPath = 'assets/designs/testing.png';
  @override
  Widget build(BuildContext context) {
    return PartPageTemplate(
      partTitle: partTitle,
      scaffoldKey: scaffoldKey,
      sessionList: ListView(
        children: <Widget>[
          SessionListItem(
            sessionName: 'Verfication and \nValidation',
            route: 'TV1',
            iconPath: iconPath,
          ),
        ],
      ),
    );
  }
}
