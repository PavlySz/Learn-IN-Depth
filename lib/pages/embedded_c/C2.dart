import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C2 extends StatefulWidget {
  @override
  _C2State createState() => _C2State();
}

class _C2State extends State<C2> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 2';
  String desc = '''C Condition
  
  Loops''';
  String filePath =
      'https://drive.google.com/open?id=1h4FbPrXxPAXtrsm8Din8xk9vLu3fEwri';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_0bfc0a3ac09d4bd0b2014cd97db17f4e.pdf';

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

// /view?usp=sharing
