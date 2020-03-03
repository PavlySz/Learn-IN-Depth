import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC8 extends StatefulWidget {
  @override
  _MC8State createState() => _MC8State();
}

class _MC8State extends State<MC8> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 8';
  String desc = '''SPI''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLYzlMWVU0bW9NeTg';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_a3df02d2b9194d57904ebb06da00e5ec.pdf';

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
