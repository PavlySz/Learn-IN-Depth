import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class C5 extends StatefulWidget {
  @override
  _C5State createState() => _C5State();
}

class _C5State extends State<C5> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 5';
  String desc = '''Structures

Union

Enum

Scope/Lifetime''';
  String filePath =
      'https://drive.google.com/open?id=177PbSbi3zZ41nZAG2Iv5iTLVwqGJoaV1';
  String partTitle = 'Embedded C';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_9eaced4f574040d8984800a81f294cbf.pdf';

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
