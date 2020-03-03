import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/collapsing_navbar.dart';
import 'package:learn_in_depth/my_clipper.dart';

class PartPageTemplate extends StatefulWidget {
  final String partTitle;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Widget sessionList;
  PartPageTemplate({this.partTitle, this.scaffoldKey, this.sessionList});

  @override
  _PartPageTemplateState createState() => _PartPageTemplateState();
}

class _PartPageTemplateState extends State<PartPageTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.scaffoldKey,
      drawer: CollapsingNavBar(),
      drawerDragStartBehavior: DragStartBehavior.start,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Stack(
              children: <Widget>[
                // Blue container
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 250.0,
                    height: 180.0,
                    color: Color.fromRGBO(58, 66, 86, 1.0),
                  ),
                ),
                // Ceh
                // Positioned(
                //   top: 25,
                //   left: 100,
                //   child: Transform.rotate(
                //     angle: 75.12,
                //     child: Image.asset(
                //       'assets/images/car.png',
                //     ),
                //   ),
                // ),
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
                        widget.partTitle,
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
                    onPressed: () =>
                        widget.scaffoldKey.currentState.openDrawer(),
                  ),
                ),
              ],
            ),
          ),
          // List goes here
          Container(
            height: MediaQuery.of(context).size.height - 190,
            child: widget.sessionList,
          ),
        ],
      ),
    );
  }
}
