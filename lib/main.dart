import 'package:ass2flutter/drawerwidget%20.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ass2flutter/MyDrawerList.dart';
import 'dart:ui';

import 'MyHomeDrawer.dart';

void main() {
  runApp(MaterialApp(
    home: chooise(),
  ));
}

class chooise extends StatelessWidget {
// if betwwen screen_1 or screen_2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: MediaQuery.of(context).orientation == Orientation.portrait
              ? screen_1()
              : screen_2()),
    );
  }
}

class screen_1 extends StatelessWidget {
// show drawer
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 78, 78),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(127, 255, 255, 255),
        child: Column(children: [
          drawerwidget(
            title: ("Home"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          drawerwidget(
            title: ("SECOND ELEMENT"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          drawerwidget(
            title: ("THIRD ELEMENT"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          drawerwidget(
            title: ("FORTH ELEMENT"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          drawerwidget(
            title: ("FIFTHE ELEMENT"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ]),
      ),
      appBar: AppBar(
        title: new Text(('SECOND ASSIGNMENT'), textAlign: TextAlign.left),
        backgroundColor: Color.fromARGB(255, 156, 12, 212),
      ),
    );
  }
}

class screen_2 extends StatelessWidget {
// grid layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 78, 78),
      appBar: AppBar(
        title: new Text(('SECOND ASSIGNMENT'), textAlign: TextAlign.left),
        backgroundColor: Color.fromARGB(255, 156, 12, 212),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: 319,
          width: 335,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(children: [
            drawerwidget(
              title: ("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            drawerwidget(
              title: ("SECOND ELEMENT"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            drawerwidget(
              title: ("THIRD ELEMENT"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            drawerwidget(
              title: ("FORTH ELEMENT"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            drawerwidget(
              title: ("FIFTHE ELEMENT"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ]),
        ),
      ]),
    );
  }
}
