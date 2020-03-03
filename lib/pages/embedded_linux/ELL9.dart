import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL9 extends StatefulWidget {
  @override
  _ELL9State createState() => _ELL9State();
}

class _ELL9State extends State<ELL9> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 9';
  String desc = '''Linux kernel Basics

Building the Linux Kernel

Lab1:Buildng/running Linux Kernel on Vexpress A9

Lab2: Build/Run Linux on RPI2

Device trees

Linux Start-Up Sequence''';

  String filePath =
      'https://drive.google.com/file/d/1Ih4041awirLF751Z1HaNBWfNEf9CxC92';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_6064d51e632d407cbcdfb562a77a2a62.pdf';

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
