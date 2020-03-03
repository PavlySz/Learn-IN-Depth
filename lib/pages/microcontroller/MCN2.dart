import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MCN2 extends StatefulWidget {
  @override
  _MCN2State createState() => _MCN2State();
}

class _MCN2State extends State<MCN2> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Notes 2';
  String desc = '''GPIO

DIO
  
IO''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLMEFIejBwWjMydEU';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_8ae5a918af344b479417843d2600b984.pdf';

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
