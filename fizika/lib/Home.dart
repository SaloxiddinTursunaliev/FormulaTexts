// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:fizika/Mexanika/Mexanika.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          "Fizika",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .appBarTheme
              .textTheme!
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
        shrinkWrap: true,
        controller: _controller,
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 1,
          crossAxisCount: (MediaQuery.of(context).size.width >= 3000)
              ? 11
              : (MediaQuery.of(context).size.width >= 2700)
                  ? 10
                  : (MediaQuery.of(context).size.width >= 2400)
                      ? 9
                      : (MediaQuery.of(context).size.width >= 2100)
                          ? 8
                          : (MediaQuery.of(context).size.width >= 1800)
                              ? 7
                              : (MediaQuery.of(context).size.width >= 1500)
                                  ? 6
                                  : (MediaQuery.of(context).size.width >= 1200)
                                      ? 5
                                      : (MediaQuery.of(context).size.width >=
                                              900)
                                          ? 4
                                          : (MediaQuery.of(context)
                                                      .size
                                                      .width >=
                                                  800)
                                              ? 3
                                              : (MediaQuery.of(context)
                                                          .size
                                                          .width >=
                                                      300)
                                                  ? 2
                                                  : 1,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.white.withAlpha(30),
            hoverColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Mexanika(),
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
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 95, 125, 136),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: Image.asset(
                      images[index],
                      alignment: Alignment.center,
                      fit: BoxFit.scaleDown,
                      height: MediaQuery.of(context).size.width / 5,
                      width: MediaQuery.of(context).size.width / 5,
                    ),
                  ),
                  SizedBox(height: 7.5),
                  Text(
                    text[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.grey[300]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
