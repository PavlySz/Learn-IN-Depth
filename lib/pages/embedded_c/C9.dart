import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C9 extends StatefulWidget {
  @override
  _C9State createState() => _C9State();
}

class _C9State extends State<C9> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 9';
  String desc = '''LIFO (STACK) 

FIFO (QUEU) 

Linked List''';
  String filePath =
      'https://drive.google.com/open?id=1wluR0j7BYL9LLg1tiXDZzHXSy91JWxcU';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_5eff30234cc846c1bac77abb264e0ad5.pdf';

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
