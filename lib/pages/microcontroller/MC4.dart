import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC4 extends StatefulWidget {
  @override
  _MC4State createState() => _MC4State();
}

class _MC4State extends State<MC4> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 4';
  String desc = '''Interrupt''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLY0RtaEdJUFZ2V2s';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_afb7b40d24a1402e92f714d9a4575459.pdf';

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
