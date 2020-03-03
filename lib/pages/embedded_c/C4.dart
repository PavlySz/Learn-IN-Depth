import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C4 extends StatefulWidget {
  @override
  _C4State createState() => _C4State();
}

class _C4State extends State<C4> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 4';
  String desc = '''C Functiones''';
  String filePath =
      'https://drive.google.com/open?id=1opKBa9QtEJ9cXBXG8RibcbMCZh_lRaWF';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_fda087fd8f7641b9b363fe58ac331f4f.pdf';

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
