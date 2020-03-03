import 'package:flutter/material.dart';

class SessionListItem extends StatelessWidget {
  final String sessionName;
  final String route;
  final String iconPath;

  SessionListItem({
    @required this.sessionName,
    @required this.route,
    @required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
      ),
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
      height: 100,
      child: InkWell(
        onTap: () {
          print("$sessionName clicked");
          print("Go to $route");
          Navigator.pushNamed(context, '/${route.toLowerCase()}');
        },
        child: Card(
          elevation: 8.0,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom:
                    BorderSide(width: 6.0, color: Colors.lightBlue.shade900),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Transform.scale(
                    scale: 1.0,
                    child: Image.asset(
                      iconPath,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    sessionName,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
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
