import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class CR extends StatefulWidget {
  @override
  _CRState createState() => _CRState();
}

class _CRState extends State<CR> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Revision';
  String desc = '''Introduction

Program flow

Array

Function

Structure-union

Macros

Pointers

Generic C

Embedded C

Important questions

Additional notes''';
  String filePath =
      'https://drive.google.com/file/d/1AA3juBXgcqzDAa0POl-_QqktcP7D7mdt/view';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_ecdde90fac884e56814303b2e898bd9d.pdf';

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
