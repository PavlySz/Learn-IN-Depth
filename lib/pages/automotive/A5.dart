import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class A5 extends StatefulWidget {
  @override
  _A5State createState() => _A5State();
}

class _A5State extends State<A5> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 5';
  String desc = '''Introduction

What is AUTOSAR

Autosar layered artiecture

The AUTOSAR Adaptive Platform for Connected and Autonomous Vehicles''';
  String filePath =
      'https://drive.google.com/open?id=18mCs9abhmALSdpRszBHE8hvTGudbyU9q';
  String partTitle = 'Automotive';
  String dropboxLink = 'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_7d3213cd65274775a73e1d396af2c536.pdf';

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
