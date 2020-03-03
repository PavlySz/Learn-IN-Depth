import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC6 extends StatefulWidget {
  @override
  _MC6State createState() => _MC6State();
}

class _MC6State extends State<MC6> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 6';
  String desc = '''ADC''';
  String filePath =
      'https://drive.google.com/open?id=1XpMonRFdl1IC9DeLoKV3LzXKdJ1M2LpG';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_e2834f219a9f420c82a138b5f28b485e.pdf';

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
