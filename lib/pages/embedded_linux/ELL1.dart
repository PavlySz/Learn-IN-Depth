import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL1 extends StatefulWidget {
  @override
  _ELL1State createState() => _ELL1State();
}

class _ELL1State extends State<ELL1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 1';
  String desc = '''Introduction to Embedded System

Historical Background

Course Outline 

Loading, Linking and Address Binding

Memory Management Concepts

Fragmentation''';

  String filePath =
      'https://drive.google.com/open?id=1HSwRFbrRO4rqGQG2i-RXP4tR5AIwoI61';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_280be2b574194f7fac255f1a2f0d2416.pdf';

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
