import 'package:flutter/material.dart';

class HomeGridCard extends StatelessWidget {
  HomeGridCard({this.partName, this.route, this.iconPath});
  final String partName;
  final String route;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        String routeName = '/' + route.toLowerCase();
        print("Go to $routeName");
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        height: 200,
        width: 200,
        child: Card(
          margin: EdgeInsets.all(10.0),
          elevation: 8.0,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Transform.scale(
                  scale: .75,
                  child: Image.asset(
                    iconPath,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  partName,
                  style: TextStyle(
                    fontSize: partName.contains(' ') && partName.length > 12
                        ? 18.0
                        : 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
