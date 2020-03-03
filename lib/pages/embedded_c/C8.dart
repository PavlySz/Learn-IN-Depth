import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C8 extends StatefulWidget {
  @override
  _C8State createState() => _C8State();
}

class _C8State extends State<C8> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 8';
  String desc = '''Volatile / Type Definition

Compilation process

QEMU / Arm Toolchain

Startup/Linker/.map file

How To Write Embedded C Code From Scratch

A Simple Makefile Tutorial Lab

gdb commands''';
  String filePath =
      'https://drive.google.com/open?id=1QGL8fDFXvKOyDcbloxD8za_xj1O5KGpi';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_8ca4836c5ad644e69cd9b3460d96d15f.pdf';

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
