import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL3 extends StatefulWidget {
  @override
  _ELL3State createState() => _ELL3State();
}

class _ELL3State extends State<ELL3> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 3';
  String desc = '''Basic I/O Concepts

Kernel modules/Process Management in Linux

OS: Abstraction Provider

Processes

Signals''';
  String filePath =
      'https://drive.google.com/open?id=1rQVwVzIzw4zL1zw5euuXnJFrt33XxqM3';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_6b3f3cae552e49f68fa94bc0c5874d33.pdf';

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
