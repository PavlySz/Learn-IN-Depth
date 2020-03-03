import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A1 extends StatefulWidget {
  @override
  _A1State createState() => _A1State();
}

class _A1State extends State<A1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 1';
  String desc = '''Multitasking

Scheduling

Context Switching

Real Time Applications

Real Time Scheduling''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLUGFhLW1MMXl5U1E';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_c87024d0d36c4e388c715d33f96e3308.pdf';
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
