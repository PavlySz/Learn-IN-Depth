import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class MC1 extends StatefulWidget {
  @override
  _MC1State createState() => _MC1State();
}

class _MC1State extends State<MC1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 1';
  String desc = '''Memory

Internal structure of a microcontroller

clocks

CPU registers

Von Neumann/Harvard Arch

Pipeline

CISC/RISC''';
  String filePath =
      'https://drive.google.com/open?id=0B7kUsgpvTWFLRkVCdFlKRWNoaVE';
  String partTitle = 'Microcontroller';  
  String dropboxLink ='https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_40fff9c5fcbe4634888f7497481102ea.pdf';

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
