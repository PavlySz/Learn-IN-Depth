import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ABasics extends StatefulWidget {
  @override
  _ABasicsState createState() => _ABasicsState();
}

class _ABasicsState extends State<ABasics> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Automotive Basics';
  String desc = '''Introduction

What is AUTOSAR

Autosar Layered Architecture

Example AUTOSAR System : Lighting System

Autosar Interfaces''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLTk5sZno0b2lmY28';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://www.dropbox.com/home/Kerolos%20Karam/automative?preview=Automative_Basics_V3.pdf';

  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      scaffoldKey: scaffoldKey,
      lessonTitle: title,
      partTitle: partTitle,
      lessonDescription: desc,
      filePath: filePath,
      dropboxLink: dropboxLink,
    );
  }
}
