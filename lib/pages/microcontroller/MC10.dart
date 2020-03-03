import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC10 extends StatefulWidget {
  @override
  _MC10State createState() => _MC10State();
}

class _MC10State extends State<MC10> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 10';
  String desc = '''DDR4
  
SDRAM''';
  String filePath =
      'https://drive.google.com/open?id=1U6RFKHG22uTLNLEsc2iSoIoTvDVa1bdi';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_6490eaad435a4193b161f9f51cbe0942.pdf';

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
