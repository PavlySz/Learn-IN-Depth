import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL8 extends StatefulWidget {
  @override
  _ELL8State createState() => _ELL8State();
}

class _ELL8State extends State<ELL8> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 8';
  String desc = '''Lab6: Build/Run Uboot for Raspberry Pi2

Lab7: Build/Run Uboot for BeagleBone Black

Lab8: Debug the U-Boot Code 

Port U-boot to a New Board (Basics)

Project “Simple Concept Implementation for OTA SW”''';

  String filePath =
      'https://drive.google.com/open?id=1CTD8np4iB3zdLjkJSNg16TXzXG_S4it_';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_1d4a76a4d3df42c0894b5540b53873d1.pdf';

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
