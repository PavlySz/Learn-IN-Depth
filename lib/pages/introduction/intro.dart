import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Intro';
  String desc = '''Introduction to Embedded Systems
  
The beginning story

Embedded System

Job Vacancies

Advanced Topics

Diploma 5''';
  String filePath =
      'https://drive.google.com/file/d/1NAJrEa5r3PfRjLbe5bm3MxSz-WCp7IuT/edit';
  String partTitle = 'Introduction';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_7f58669420284aa7ac0758490b6cf9ed.pdf';

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
