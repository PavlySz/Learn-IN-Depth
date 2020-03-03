import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC2 extends StatefulWidget {
  @override
  _MC2State createState() => _MC2State();
}

class _MC2State extends State<MC2> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 2';
  String desc = '''GPIO Module''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLS3hZT293S2Y2VmM';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_32d00d72ad09458a924a24083c7307e5.pdf';

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
