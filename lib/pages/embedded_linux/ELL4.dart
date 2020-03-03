import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL4 extends StatefulWidget {
  @override
  _ELL4State createState() => _ELL4State();
}

class _ELL4State extends State<ELL4> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 4';
  String desc = '''Alarm

Read/Write Directories/Files

P-thread

P-thread Mutexes

Socket Programming 

Linux Command Line Interface CLI

Linux File-System Hierarchy''';

  String filePath =
      'https://drive.google.com/open?id=1NBLCtX5Jf1Xd-wmIJqskZkI2kOdVaDYV';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_c42237f44c184c448adf2371b39af38f.pdf';

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
