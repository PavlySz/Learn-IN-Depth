import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A6 extends StatefulWidget {
  @override
  _A6State createState() => _A6State();
}

class _A6State extends State<A6> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 6';
  String desc = '''Use Cases of AUTOSAR

AUTOSAR application layer

AUTOSAR OS''';
  String filePath =
      'https://drive.google.com/open?id=1UDIw3cfPGDbmteLkD6IkmVamh3shErct';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_750f5c41e37e40248144475f7cbe13b5.pdf';


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
