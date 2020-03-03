import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C1 extends StatefulWidget {
  @override
  _C1State createState() => _C1State();
}

class _C1State extends State<C1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 1';
  String desc = '''C-Basics''';
  String filePath =
      'https://drive.google.com/open?id=1yNfQlaOexbnxVsOxj6mD_p9S5DqGFbpZ';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_4d48ff8957254d2ebf5a16ec79a151cd.pdf';

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
