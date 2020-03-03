import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_in_depth/commons/collapsing_navbar.dart';
import 'package:learn_in_depth/pages/pdf_viewer_page.dart';
import '../my_clipper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({
    Key key,
    @required this.scaffoldKey,
    @required this.lessonTitle,
    @required this.partTitle,
    @required this.lessonDescription,
    @required this.filePath,
    @required this.dropboxLink,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;
  final String lessonTitle;
  final String lessonDescription;
  final String filePath;
  final String partTitle;
  final String dropboxLink;

  void share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    final String text =
        '''Check out $partTitle: $lessonTitle in the Learn-IN-Depth app. 
  You can download it for free from: [INSERT APP LINK HERE]''';

    Share.share(
      text,
      subject: 'SUBJECT',
      sharePositionOrigin: box.globalToLocal(Offset.zero) & box.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CollapsingNavBar(),
      drawerDragStartBehavior: DragStartBehavior.start,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Header
          Expanded(
            flex: 2,
            child: ClipPath(
              clipper: ClippingClass(),
              child: Stack(
                children: <Widget>[
                  // Blue container
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250.0,
                      color: Color.fromRGBO(58, 66, 86, 1.0),
                      child: Opacity(
                        opacity: .5,
                        child: Image.asset(
                          'assets/images/ceh_straight.png',
                        ),
                      ),
                    ),
                  ),
                  // Lesson title card
                  Positioned(
                    left: 90,
                    top: 50,
                    child: Card(
                      elevation: 8.0,
                      color: Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 30.0,
                        ),
                        child: Text(
                          partTitle + '\n' + lessonTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(58, 66, 86, 1.0),
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Drawer
                  Positioned(
                    left: 10,
                    top: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      onPressed: () => scaffoldKey.currentState.openDrawer(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Body: Description
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                // What you'll learn
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    'What you will learn in this lesson',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
                // Description itself
                Expanded(
                  child: Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 8.0,
                    margin: EdgeInsets.symmetric(
                      vertical: 25.0,
                      horizontal: 20.0,
                    ),
                    color: Colors.grey[200],
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[100],
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                      child: SingleChildScrollView(
                        child: Text(
                          lessonDescription,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Footer: Bottom row of buttons
          Expanded(
            flex: 1,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Google Drive
                InkWell(
                  onTap: () {
                    launch(filePath);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      FontAwesomeIcons.googleDrive,
                      size: 50.0,
                      color: Colors.pink,
                    ),
                  ),
                ),
                // View PDF in app
                InkWell(
                  onTap: () {
                    // print("Open PDF in path $filePath!");
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => new PDFPage(
                          filePath: dropboxLink,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 8.0,
                    // margin: EdgeInsets.symmetric(vertical: 20.0),
                    color: Colors.grey[300],
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Color.fromRGBO(64, 75, 96, .9),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            Icons.picture_as_pdf,
                            size: 50.0,
                            color: Colors.pink,
                          ),
                          Text(
                            lessonTitle,
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Share app
                InkWell(
                  onTap: () {
                    // Share
                    share(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.share,
                      size: 50.0,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
