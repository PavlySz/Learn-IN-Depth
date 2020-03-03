import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A8 extends StatefulWidget {
  @override
  _A8State createState() => _A8State();
}

class _A8State extends State<A8> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 8';
  String desc = '''CAN Overview

CAN-FD

Why the need for CAN-FD?

Time-Triggered CAN (TTCAN)

Why we need Time-Triggered CAN

Local Interconnect Network (LIN)

Introduction to FlexRay

Compare Between LIN, CAN and FlexRay''';
  String filePath =
      'https://drive.google.com/open?id=1NuaXoMLGgu3U7s-2RaGDr_eNAsAtRHss';
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
