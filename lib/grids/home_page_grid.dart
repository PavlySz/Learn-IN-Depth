import 'package:flutter/material.dart';
import 'package:learn_in_depth/commons/home_grid_card.dart';

class HomeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      // childAspectRatio: 1.3,
      children: <Widget>[
        HomeGridCard(
          partName: 'Introduction',
          route: 'intro_page',
          iconPath: 'assets/designs/intro.png',
        ),
        HomeGridCard(
          partName: 'Embedded C',
          route: 'emb_c_page',
          iconPath: 'assets/designs/C.png',
        ),
        HomeGridCard(
          partName: 'Microcontroller',
          route: 'micro_page',
          iconPath: 'assets/designs/microprocessor.png',
        ),
        HomeGridCard(
          partName: 'Testing',
          route: 'tv_page',
          iconPath: 'assets/designs/testing.png',
        ),
        HomeGridCard(
          partName: 'Automotive',
          route: 'auto_page',
          iconPath: 'assets/designs/automotive.png',
        ),
        HomeGridCard(
          partName: 'Embedded Linux',
          route: 'emb_linux_page',
          iconPath: 'assets/designs/linux.png',
        ),
      ],
    );
  }
}
