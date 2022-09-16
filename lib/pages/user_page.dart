import 'dart:math';

import 'package:ewalle/main.dart';
import 'package:ewalle/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../clip.dart';

void main() => runApp(EWalleUser());

class EWalleUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
                child: Column(
                  children: [
                    EWalleImageHeader(),
                    EWalleImageDrawer(),
                    EWalleImageExit(),
                    EWalleTextVersion()
                  ],
                ))));
  }
}

class EWalleImageRotate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RotationTransition(
        turns: AlwaysStoppedAnimation(-15 / 360),
        child: Container(
            child: SizedBox(
                height: 600,
                width: 300,
                child: TriangleClipper()
            )
        )
    );

  }
}

class TriangleClipper extends StatelessWidget {
  const TriangleClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ClipPath(
        clipBehavior: Clip.hardEdge,
      child: Image(image: AssetImage('assets/images/screen_anim.png')),
    );
  }
}



class EWalleImageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ImageHeader(),
        ButtonExit()
      ],
    );
  }

}

class EWalleImageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        _MainDrawerState(),
        EWalleImageRotate()
      ],
    );
  }

}

class EWalleImageExit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ImageExit(),
      ],
    );
  }

}

class EWalleTextVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        TextVersion(),
      ],
    );
  }

}

class _MainDrawerState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 550,
        padding: const EdgeInsets.only(top: 30, left: 10),
            child: ListView(
              children: <Widget>[
                ListTile(
                    title: new Text("Home"),
                    onTap: () {
                    }
                ),
                ListTile(
                    title: new Text("Profile"),
                    onTap: () {}
                ),
                ListTile(
                    title: new Text("Accounts"),
                    onTap: () {}
                ),
                ListTile(
                    title: new Text("Transactions"),
                    onTap: () {}
                ),
                ListTile(
                    title: new Text("Stats"),
                    onTap: () {}
                ),
                ListTile(
                    title: new Text("Settings"),
                    onTap: () {}
                ),
                ListTile(
                    title: new Text("Help"),
                    onTap: () {}
                )
              ],
            ),
        );
  }
}

class ImageExit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 5, left: 25),
            child: SizedBox(width: 90, height: 50, child: Image.asset("assets/images/exit.png"),
            )
    );
  }
}

class ButtonExit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 100,
        height: 100,
        padding: const EdgeInsets.only(top: 5, left: 105),
        child: CloseButton(
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => EWalleLogin()),
            );
          },
        )
    );
  }
}

class ImageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
            child: SizedBox(width: 200, height: 100, child: Image.asset("assets/images/user_1.png"),
            )
    );
  }
}

class TextVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(top: 40, left: 25),
        child: const Text(
          'Version 2.0.1',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12.0),
        )
    );
  }
}



