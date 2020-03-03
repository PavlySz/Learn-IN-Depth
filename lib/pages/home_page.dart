// Home page
import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/collapsing_navbar.dart';
import 'package:learn_in_depth/grids/home_page_grid.dart';
import 'package:learn_in_depth/my_clipper.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.selectedTitle});
  final String selectedTitle;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      drawer: CollapsingNavBar(),
      drawerEdgeDragWidth: screenWidth / 4,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: ClippingClass(),
            child: Stack(
              children: <Widget>[
                // Blue clip
                Container(
                  color: Color.fromRGBO(58, 66, 86, 1.0),
                  height: screenHeight / 4,
                ),
                Positioned(
                  top: 40,
                  left: 10,
                  child: Column(
                    children: <Widget>[
                      // Learn-IN-Depth
                      Row(
                        children: <Widget>[
                          // Drawer
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              size: 40.0,
                              color: Colors.white,
                            ),
                            onPressed: () =>
                                scaffoldKey.currentState.openDrawer(),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Learn-IN-Depth',
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      // Eng. Kerolos Shenouda
                      Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Text(
                          'Eng. Kerolos Shenouda',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight - (screenHeight / 4),
            child: HomeGrid(),
          ),
        ],
      ),
    );
  }
}
