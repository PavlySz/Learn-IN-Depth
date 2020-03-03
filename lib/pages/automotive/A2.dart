import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A2 extends StatefulWidget {
  @override
  _A2State createState() => _A2State();
}

class _A2State extends State<A2> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 2';
  String desc = '''OSEK/VDX Operating System

What is the OSEK-VDX ?

What is Trampoline?

Tasks in OSEK

OSEK scheduling policy''';
  String filePath =
      'https://drive.google.com/open?id=1kFoCOUO_13BwTkwuIAYwi19QIUsXRFke';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_24ad9ac265234f9a9dce8113158c4081.pdf';

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
