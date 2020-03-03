import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A7 extends StatefulWidget {
  @override
  _A7State createState() => _A7State();
}

class _A7State extends State<A7> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 7';
  String desc = '''CAN Overview

Standard data frame

Remote Frame

CAN Data Protection

CAN Communication Stack

Seat heating system Example''';
  String filePath =
      'https://drive.google.com/open?id=1AcubOGjx9VxKQiJRssYVoM927FfPK4pJ';
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
