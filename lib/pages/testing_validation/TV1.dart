import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class TV1 extends StatefulWidget {
  @override
  _TV1State createState() => _TV1State();
}

class _TV1State extends State<TV1> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Verfication';
  String desc = '''What is Embedded Software Testing ?

Error, Faults, Failure

Testing

Verfication vs Validation

Ways to improve quality

Software Development Life Cycle

Software Testing Life Cycle''';
  String filePath =
      'https://drive.google.com/file/d/16ZLXaLsdkNRk3Yks6OHX5mVuQ-yLZZyu';
  String partTitle = 'Validation and';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_37577e7f3ef2457f9fbb8b1336bcfa20.pdf';

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
