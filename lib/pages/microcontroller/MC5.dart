import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC5 extends StatefulWidget {
  @override
  _MC5State createState() => _MC5State();
}

class _MC5State extends State<MC5> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 5';
  String desc = '''Timers''';
  String filePath =
      'https://drive.google.com/open?id=1L9DV9W_Kc4tuXQOXH4sOw8QqstX0xWD0';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_29d8c58c57e7490db82eb375dfeb4036.pdf';

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
