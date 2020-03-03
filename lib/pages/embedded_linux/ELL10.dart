import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL10 extends StatefulWidget {
  @override
  _ELL10State createState() => _ELL10State();
}

class _ELL10State extends State<ELL10> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 10';

  String desc = '''Root File System

File System Contents

How to Create a Mnimal Root File System

The Init Process

Busybox

File System Types

Build Root

Third Project''';

  String filePath =
      'https://drive.google.com/open?id=1HcQpmMIT1Ti8lC1tsTwnjHSRKvpRTpZ-';
  String partTitle = 'Embedded Linux';

  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_fa24a7cb0e654f1c8945dba06e48500c.pdf';

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
