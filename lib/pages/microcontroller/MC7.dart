import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC7 extends StatefulWidget {
  @override
  _MC7State createState() => _MC7State();
}

class _MC7State extends State<MC7> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 7';
  String desc = '''UART''';
  String filePath =
      'https://drive.google.com/open?id=14oLDfqqd-zRWCln-1feKlnE8oto6Zfae';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_0fa4dba35e944c879dfbc752619356cb.pdf';

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
