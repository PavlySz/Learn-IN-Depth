import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C3 extends StatefulWidget {
  @override
  _C3State createState() => _C3State();
}

class _C3State extends State<C3> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 3';
  String desc = '''Array
  
  String''';
  String filePath =
      'https://drive.google.com/open?id=1ESbYkr-tMmawkU0xEVds7ZzW20vzv2YK';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_eeaa62d8ced94b80ae540d8ed3363e9a.pdf';

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
