import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL5 extends StatefulWidget {
  @override
  _ELL5State createState() => _ELL5State();
}

class _ELL5State extends State<ELL5> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 5';
  String desc = '''Basics Linux commands

Using Wild Cards

Linux Help Commands

Composite Commands

Shell script

Searching Text (grep command)

Comparing Text Files

Git''';

  String filePath =
      'https://drive.google.com/open?id=1gXk_2_0I3lpf9Y8RaBELpPynhFXazi30';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_41b2a631c7bb4f3782cba0ed4101f783.pdf';

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
