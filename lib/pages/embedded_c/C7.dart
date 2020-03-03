import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C7 extends StatefulWidget {
  @override
  _C7State createState() => _C7State();
}

class _C7State extends State<C7> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 7';
  String desc = '''Pointers''';
  String filePath =
      'https://drive.google.com/open?id=1LfrXdhb683sinhMg8hLomOmPuLQ5lvbW';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_ca56e875f87a453fb9b9772107b4eee8.pdf';

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
