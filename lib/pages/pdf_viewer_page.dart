import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PDFPage extends StatefulWidget {
  final String filePath;
  PDFPage({Key key, this.filePath}) : super(key: key);

  @override
  _PDFPageState createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  bool _isLoading = false;
  bool _isInit = true;
  PDFDocument doc;

  loadPDFFile() async {
    setState(() {
      _isLoading = true;
      _isInit = false;
    });
    // doc = await PDFDocument.fromURL(
    //     'https://dfcbabb1-60fd-4176-9531-de96c76be187.filesusr.com/ugd/2f2dbe_41b2a631c7bb4f3782cba0ed4101f783.pdf');
    doc = await PDFDocument.fromURL(widget.filePath);
    print("PDF Link: ${widget.filePath}");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPDFFile();
    // print("Link from PDFPage: " + widget.filePath);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _isInit
                  ? Text("Wait up...")
                  : _isLoading
                      ? Center(child: CircularProgressIndicator())
                      : PDFViewer(document: doc),
            ),
          ),
        ],
      ),
    );
  }
}
