import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MCN1 extends StatefulWidget {
  @override
  _MCN1State createState() => _MCN1State();
}

class _MCN1State extends State<MCN1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Notes 1';
  String desc = '''Embedded Systems

Mechatronic systems

n-bit processor

''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLS1ZnMURqZkJsQkU';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_251c5a71c78e46039f7f58456af48b37.pdf';

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
