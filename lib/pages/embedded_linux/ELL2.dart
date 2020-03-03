import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL2 extends StatefulWidget {
  @override
  _ELL2State createState() => _ELL2State();
}

class _ELL2State extends State<ELL2> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 2';
  String desc = '''Paging & Segmentation

virtual Memory Upon the Paging Techniques.''';

  String filePath =
      'https://drive.google.com/open?id=1pC-ZcsuI2fOdLfyDkGdof7ttnjIbecn1';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_f0fdbd94c85e41bc8051fbf3459ca815.pdf';

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
