import 'package:flutter/material.dart';
import 'package:learn_in_depth/pages/template_page.dart';

class ELL7 extends StatefulWidget {
  @override
  _ELL7State createState() => _ELL7State();
}

class _ELL7State extends State<ELL7> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String title = 'Session 7';
  String desc = '''GNU Cross-Platform Development Toolchain

Bootloaders

The Boot Sequence on (DRAM SYSTEM)

Three Phases Boot Sequence Inside Bootloaders

The U-boot Bootloader

Booting From SDCARD / TFTP server

U-Boot Environment Variables''';

  String filePath =
      'https://drive.google.com/open?id=1pXgwqR5R8ysmMjLFLUbdoAqeiMP3WkUk';
  String partTitle = 'Embedded Linux';
  String dropboxLink =
      'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_41b2c016613048438c62d270131cd87f.pdf';

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
