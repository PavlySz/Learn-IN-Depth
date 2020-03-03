import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A3 extends StatefulWidget {
  @override
  _A3State createState() => _A3State();
}

class _A3State extends State<A3> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 3';
  String desc = '''Extended tasks

Extended task based on event

write the oil file

Draw a Task Timeline

Interrupts

Counters and Alarms''';
  String filePath =
      'https://drive.google.com/open?id=1FAnl_Nmrx7AQvEySiudkaVh_HYyMPHFX';
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
