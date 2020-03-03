import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC9 extends StatefulWidget {
  @override
  _MC9State createState() => _MC9State();
}

class _MC9State extends State<MC9> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 9';
  String desc = '''I2C''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLOUpWMVJyRG1OdnM';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_b2cc0141734f45008246cdfa4930dc70.pdf';

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
