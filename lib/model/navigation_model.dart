import 'package:flutter/material.dart';
import 'package:get/get.dart';

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Introduction',
    <Entry>[
      Entry('Introduction Intro'),
    ],
  ),
  Entry(
    'Embedded C',
    <Entry>[
      Entry('Session C1'),
      Entry('Session C2'),
      Entry('Session C3'),
      Entry('Session C4'),
      Entry('Session C5'),
      Entry('Session C6'),
      Entry('Session C7'),
      Entry('Session C8'),
      Entry('Session C9'),
      Entry('Session C10'),
      Entry('Revision CR'),
    ],
  ),
  Entry(
    'Microcontroller',
    <Entry>[
      Entry('Session MC1'),
      Entry('Session MC2'),
      Entry('Session MC3'),
      Entry('Session MC4'),
      Entry('Session MC5'),
      Entry('Session MC6'),
      Entry('Session MC7'),
      Entry('Session MC8'),
      Entry('Session MC9'),
      Entry('Session MC10'),
      Entry('Revision MCR'),
      Entry('Notes MCN1'),
      Entry('Notes MCN2'),
    ],
  ),
  Entry(
    'Automotive',
    <Entry>[
      Entry('Session A1'),
      Entry('Session A2'),
      Entry('Session A3'),
      Entry('Session A4'),
      Entry('Session A5'),
      Entry('Session A6'),
      Entry('Session A7'),
      Entry('Session A8'),
      Entry('Automotive AHandbook'),
    ],
  ),
  Entry(
    'Testing and Validation',
    <Entry>[
      Entry('Testing TV1'),
    ],
  ),
  Entry(
    'Embedded Linux',
    <Entry>[
      Entry('Session EL1'),
      Entry('Session EL2'),
      Entry('Session EL3'),
      Entry('Session EL4'),
      Entry('Session EL5'),
      Entry('Session EL6'),
      Entry('Session EL7'),
      Entry('Session EL8'),
      Entry('Session EL9'),
      Entry('Session EL10'),
    ],
  ),
  Entry(
    'Useful Links',
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      // child
      return ListTile(
        leading: Icon(
          Icons.filter_list,
          // color: Colors.white38,
        ),
        title: Text(
          root.title,
          style: TextStyle(
            fontSize: 18.0,
            // color: Colors.white38,
          ),
        ),
        onTap: () {
          String routeString;
          print("${root.title} was clicked!");
          if (root.title == 'Useful Links') {
            routeString = 'useful';
          } else {
            routeString = root.title.split(" ")[1].toLowerCase();
          }
          print(routeString);
          Get.toNamed('/$routeString');
        },
      );
    }
    // parent
    return ExpansionTile(
      leading: Icon(
        Icons.list,
        color: Colors.white,
      ),
      trailing: Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      key: PageStorageKey<Entry>(root),
      title: Text(
        root.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
        ),
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
