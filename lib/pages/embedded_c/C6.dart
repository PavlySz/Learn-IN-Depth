import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C6 extends StatefulWidget {
  @override
  _C6State createState() => _C6State();
}

class _C6State extends State<C6> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 6';
  String desc = '''Macros

#pragma

Constant''';
  String filePath =
      'https://drive.google.com/open?id=13N0oUo4natir_ppqRZ_dBgdvPxuvlXr8';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_a8198668c7d04dc091c7279c22be88d1.pdf';

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
