import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  GridCard({this.partName, this.sessionName, this.route});
  final String partName;
  final String sessionName;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        String routeName = '/' + route.toLowerCase();
        print("Go to $routeName");
        Navigator.pushNamed(context, routeName);
      },
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Card(
            margin: EdgeInsets.all(10.0),
            elevation: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.picture_as_pdf,
                    color: Colors.pink,
                    size: 50,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    partName,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    sessionName,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
