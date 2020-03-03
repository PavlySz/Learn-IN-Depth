import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C10 extends StatefulWidget {
  @override
  _C10State createState() => _C10State();
}

class _C10State extends State<C10> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 10';
  String desc = '''AUTOSAR C Implementation rules

MISRA-C:2004 Rules''';
  String filePath =
      'https://drive.google.com/open?id=1QbMEbiyIIdlYPUwLs7Z-7AzlpVb7WPks';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_944bb87f2f194bc890b2603ced4f3336.pdf';

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
