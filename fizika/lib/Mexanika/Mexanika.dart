// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:fizika/Home.dart';
import 'package:fizika/Mexanika/Kinematika/Kinematika.dart';
import 'package:flutter/material.dart';

class Mexanika extends StatefulWidget {
  const Mexanika({
    Key? key,
  }) : super(key: key);

  @override
  _MexanikaState createState() => _MexanikaState();
}

class _MexanikaState extends State<Mexanika> {
  @override
  void initState() {
    super.initState();
  }

  ScrollController _controller = ScrollController();

  List<dynamic> images = [
    'assets/home-1.PNG',
    'assets/home-2.PNG',
    'assets/home-3.PNG',
    'assets/home-4.PNG',
  ];
  List<dynamic> text = [
    'Mexanika',
    'Termodinamika',
    'Elektor',
    'Magnetizm',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 95, 125, 136),
        title: Text(
          "Mexanika",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .appBarTheme
              .textTheme!
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 15),
          InkWell(
            splashColor: Colors.white.withAlpha(30),
            hoverColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Kinematika(ind: 0),
                  transitionDuration: const Duration(milliseconds: 0),
                  reverseTransitionDuration: const Duration(milliseconds: 0),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    var begin = Offset.zero;
                    var end = Offset.zero;
                    var curve = Curves.ease;
                    var tween = Tween(begin: begin, end: end).chain(
                      CurveTween(curve: curve),
                    );
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey[850],
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Text(
                "Kinematika",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey[300]),
              ),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            splashColor: Colors.white.withAlpha(30),
            hoverColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Kinematika(ind: 1),
                  transitionDuration: const Duration(milliseconds: 0),
                  reverseTransitionDuration: const Duration(milliseconds: 0),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    var begin = Offset.zero;
                    var end = Offset.zero;
                    var curve = Curves.ease;
                    var tween = Tween(begin: begin, end: end).chain(
                      CurveTween(curve: curve),
                    );
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey[850],
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Text(
                "Dinamika",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey[300]),
              ),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            splashColor: Colors.white.withAlpha(30),
            hoverColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Kinematika(ind: 2),
                  transitionDuration: const Duration(milliseconds: 0),
                  reverseTransitionDuration: const Duration(milliseconds: 0),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    var begin = Offset.zero;
                    var end = Offset.zero;
                    var curve = Curves.ease;
                    var tween = Tween(begin: begin, end: end).chain(
                      CurveTween(curve: curve),
                    );
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey[850],
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Text(
                "Statika",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey[300]),
              ),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            splashColor: Colors.white.withAlpha(30),
            hoverColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Kinematika(ind: 3),
                  transitionDuration: const Duration(milliseconds: 0),
                  reverseTransitionDuration: const Duration(milliseconds: 0),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    var begin = Offset.zero;
                    var end = Offset.zero;
                    var curve = Curves.ease;
                    var tween = Tween(begin: begin, end: end).chain(
                      CurveTween(curve: curve),
                    );
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey[850],
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Text(
                "Gidrostatika",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey[300]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
