import 'package:flutter/material.dart';

// Home page
import 'package:learn_in_depth/pages/home_page.dart';

// Part pages
import 'package:learn_in_depth/pages/automotive/Automotive_page.dart';
import 'package:learn_in_depth/pages/embedded_c/Embedded_C_page.dart';
import 'package:learn_in_depth/pages/embedded_linux/Embedded_Linux_page.dart';
import 'package:learn_in_depth/pages/introduction/Introduction_page.dart';
import 'package:learn_in_depth/pages/microcontroller/MCR.dart';
import 'package:learn_in_depth/pages/microcontroller/Microcontroller_page.dart';
import 'package:learn_in_depth/pages/testing_validation/testing_validation_page.dart';

// Intro
import 'package:learn_in_depth/pages/introduction/intro.dart';

// Automotive
import 'package:learn_in_depth/pages/automotive/A1.dart';
import 'package:learn_in_depth/pages/automotive/A2.dart';
import 'package:learn_in_depth/pages/automotive/A3.dart';
import 'package:learn_in_depth/pages/automotive/A4.dart';
import 'package:learn_in_depth/pages/automotive/A5.dart';
import 'package:learn_in_depth/pages/automotive/A6.dart';
import 'package:learn_in_depth/pages/automotive/A7.dart';
import 'package:learn_in_depth/pages/automotive/A8.dart';
import 'package:learn_in_depth/pages/automotive/AHandbook.dart';

// Embedded C
import 'package:learn_in_depth/pages/embedded_c/C1.dart';
import 'package:learn_in_depth/pages/embedded_c/C2.dart';
import 'package:learn_in_depth/pages/embedded_c/C3.dart';
import 'package:learn_in_depth/pages/embedded_c/C4.dart';
import 'package:learn_in_depth/pages/embedded_c/C5.dart';
import 'package:learn_in_depth/pages/embedded_c/C6.dart';
import 'package:learn_in_depth/pages/embedded_c/C7.dart';
import 'package:learn_in_depth/pages/embedded_c/C8.dart';
import 'package:learn_in_depth/pages/embedded_c/C9.dart';
import 'package:learn_in_depth/pages/embedded_c/C10.dart';
import 'package:learn_in_depth/pages/embedded_c/CR.dart';

// Microcontroller
import 'package:learn_in_depth/pages/microcontroller/MC1.dart';
import 'package:learn_in_depth/pages/microcontroller/MC2.dart';
import 'package:learn_in_depth/pages/microcontroller/MC3.dart';
import 'package:learn_in_depth/pages/microcontroller/MC4.dart';
import 'package:learn_in_depth/pages/microcontroller/MC5.dart';
import 'package:learn_in_depth/pages/microcontroller/MC6.dart';
import 'package:learn_in_depth/pages/microcontroller/MC7.dart';
import 'package:learn_in_depth/pages/microcontroller/MC8.dart';
import 'package:learn_in_depth/pages/microcontroller/MC9.dart';
import 'package:learn_in_depth/pages/microcontroller/MC10.dart';
import 'package:learn_in_depth/pages/microcontroller/MCN1.dart';
import 'package:learn_in_depth/pages/microcontroller/MCN2.dart';

// Embedded Linux
import 'package:learn_in_depth/pages/embedded_linux/ELL1.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL2.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL3.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL4.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL5.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL6.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL7.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL8.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL9.dart';
import 'package:learn_in_depth/pages/embedded_linux/ELL10.dart';

// Testing and Validation
import 'package:learn_in_depth/pages/testing_validation/TV1.dart';
import 'package:learn_in_depth/pages/useful_link.dart';

class Routes {
  final myRoutes = <String, WidgetBuilder>{
    '/': (context) => MyHomePage(),

    '/useful': (context) => UsefulPage(),

    // Part pages
    '/intro_page': (context) => IntroPage(),
    '/emb_c_page': (context) => EmbeddedCPage(),
    '/micro_page': (context) => MCPage(),
    '/tv_page': (context) => TVPage(),
    '/auto_page': (context) => AutoPage(),
    '/emb_linux_page': (context) => EmbeddedLinuxPage(),

    // Intro
    '/intro': (context) => Intro(),

    // Automotive
    '/a1': (context) => A1(),
    '/a2': (context) => A2(),
    '/a3': (context) => A3(),
    '/a4': (context) => A4(),
    '/a5': (context) => A5(),
    '/a6': (context) => A6(),
    '/a7': (context) => A7(),
    '/a8': (context) => A8(),
    '/ahandbook': (context) => AHandbook(),

    // Embedded C
    '/c1': (context) => C1(),
    '/c2': (context) => C2(),
    '/c3': (context) => C3(),
    '/c4': (context) => C4(),
    '/c5': (context) => C5(),
    '/c6': (context) => C6(),
    '/c7': (context) => C7(),
    '/c8': (context) => C8(),
    '/c9': (context) => C9(),
    '/c10': (context) => C10(),
    '/cr': (context) => CR(),

    // Testing and Validation
    '/tv1': (context) => TV1(),

    // Microcontroller
    '/mc1': (context) => MC1(),
    '/mc2': (context) => MC2(),
    '/mc3': (context) => MC3(),
    '/mc4': (context) => MC4(),
    '/mc5': (context) => MC5(),
    '/mc6': (context) => MC6(),
    '/mc7': (context) => MC7(),
    '/mc8': (context) => MC8(),
    '/mc9': (context) => MC9(),
    '/mc10': (context) => MC10(),
    '/mcn1': (context) => MCN1(),
    '/mcn2': (context) => MCN2(),
    '/mcr': (context) => MCR(),

    // Embedded Linux
    '/el1': (context) => ELL1(),
    '/el2': (context) => ELL2(),
    '/el3': (context) => ELL3(),
    '/el4': (context) => ELL4(),
    '/el5': (context) => ELL5(),
    '/el6': (context) => ELL6(),
    '/el7': (context) => ELL7(),
    '/el8': (context) => ELL8(),
    '/el9': (context) => ELL9(),
    '/el10': (context) => ELL10(),
  };
}
