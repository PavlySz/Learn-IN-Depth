import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC3 extends StatefulWidget {
  @override
  _MC3State createState() => _MC3State();
}

class _MC3State extends State<MC3> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 3';
  String desc = '''Keypad
  
LCD''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLYU9uczhndDFLRzQ';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_f95e4bbe2c7c450b87f4ef32642f8847.pdf';

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
