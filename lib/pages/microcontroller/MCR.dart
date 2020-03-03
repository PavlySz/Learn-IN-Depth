import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MCR extends StatefulWidget {
  @override
  _MCRState createState() => _MCRState();
}

class _MCRState extends State<MCR> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Revision';
  String desc = '''C Embedded C

Microcontroller notes

Microcontroller questions

Interrupt notes

Interrupt questions

Timer

Interface protocol notes

ADC

Communication protocols''';
  String filePath =
      'https://drive.google.com/open?id=1oS6usP9XfO-0nmzBExVMTibROlO8auiO';
  String partTitle = 'Microcontroller';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_7d1d6bd8aa2d4b549ee68e21e66e7fb8.pdf';

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
