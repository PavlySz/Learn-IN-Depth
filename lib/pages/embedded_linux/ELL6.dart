import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL6 extends StatefulWidget {
  @override
  _ELL6State createState() => _ELL6State();
}

class _ELL6State extends State<ELL6> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 6';
  String desc = '''Cross-compiling Toolchains

ToolChain Components

Labs ''';

  String filePath =
      'https://drive.google.com/open?id=1gGpXvFjKLfydhHhNZqGQzvzO_ZlEI3c2';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_ededf705bc2c4e98ba698f37aec0bdfb.pdf';

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
