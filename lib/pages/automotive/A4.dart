import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A4 extends StatefulWidget {
  @override
  _A4State createState() => _A4State();
}

class _A4State extends State<A4> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 4';
  String desc = '''Conformance

Hook Routines

Resources Concepts in RTOS

OSEK-OS Resources Concepts

Linkead os Resources''';
  String filePath =
      'https://drive.google.com/open?id=1FnbbY6QMjxxvxYbj8tJKvJNhjr-DiP2L';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_0fc29bad34d94da7801374060e98aae3.pdf';


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
