import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class AHandbook extends StatefulWidget {
  @override
  _AHandbookState createState() => _AHandbookState();
}

class _AHandbookState extends State<AHandbook> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Handbook';
  String desc = '''RTOS Basics

Study AUTOSAR OS

Study AUTOSAR Basics

Study Automotive protocols/Model

Solve Technical Exams/interview questions''';
  String filePath =
      'https://drive.google.com/open?id=1U3imGpifV6WV2l4yX-21JeIM6YH6liql';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_03a90ccb2c2940dea236d7bc21bd678f.pdf';


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
