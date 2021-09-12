// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:fizika/Home.dart';
import 'package:fizika/Mexanika/Mexanika.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class Kinematika extends StatefulWidget {
  final int? ind;
  const Kinematika({
    Key? key,
    this.ind,
  }) : super(key: key);

  @override
  _KinematikaState createState() => _KinematikaState();
}

class _KinematikaState extends State<Kinematika> with TickerProviderStateMixin {
  TabController? tabCtrl;
  int tab = 0;

  @override
  void initState() {
    super.initState();
    tab = widget.ind!;
    tabCtrl = TabController(length: 4, vsync: this, initialIndex: tab);
    tabCtrl!.addListener(() {
      setState(() {
        tab = tabCtrl!.index;
      });
    });
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
      backgroundColor: Colors.grey[850],
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            alignment: Alignment(-1.0, -1.0),
            height: 50,
            child: TabBar(
              onTap: (int i) {},
              isScrollable: true,
              controller: tabCtrl,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Kinematika',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      // color: Color.fromARGB(255, 50, 50, 50),
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Dinamika',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      //color: Color.fromARGB(255, 50, 50, 50),
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Statika',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      // color: Color.fromARGB(255, 50, 50, 50),
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Gidrostatika',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      //color: Color.fromARGB(255, 50, 50, 50),
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabCtrl,
        //physics: BouncingScrollPhysics(),
        //physics: ClampingScrollPhysics(),
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          ListView(
            padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Mexanika asosan ikki qismga - kinеmatika va dinamikaga bo’linadi. Kinеmatika-harakatni uni yuzaga kеltiruvchi sabablarni hisobga olmagan holda o`rganadi, ya`ni jismlar vaziyatini aniqlab beradi. Dinamika esa jismlar harakatini yuzaga kеltiruvch sababni, ya`ni jismlarning tashqi ta`sirga bo’lgan munosabati qonunlarini o`rganadi. Demak fizikaning dinamika bo’limi-tashqi ta`sir natijasida jismlarning tinch yoki harakatda bo’lishi sababini o`rganadi.",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Turg'un tekis harakat",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  TeXView(
                    child: TeXViewInkWell(
                      id: "id_0",
                      child: TeXViewColumn(
                        children: [
                          TeXViewDocument(
                            r"""<p>                                
                       $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$</p>""",
                            style: TeXViewStyle(
                              backgroundColor: Colors.grey[850],
                              contentColor: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TeXView(
                    child: TeXViewInkWell(
                      id: "id_0",
                      child: TeXViewDocument(
                        r"""<p>                                
                      
                        <style>
                          .card {
                            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                            transition: 0.3s;
                            width: 40%;
                          }

                          .card:hover {
                            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
                          }

                          .container {
                            padding: 2px 16px;


                        </style>
                        <div class="card">
                          <div class="container">
                            <p>
                              \begin{align}
                              \dot{x} & = \sigma(y-x) \\
                              \dot{y} & = \rho x - y - xz \\
                              \dot{z} & = -\beta z + xy
                              \end{align}
                            </p>
                          </div>
                        </div></p>""",
                        style: TeXViewStyle(
                          backgroundColor: Colors.grey[850],
                          contentColor: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ListView(
            padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Mexanika asosan ikki qismga - kinеmatika va dinamikaga bo’linadi. Kinеmatika-harakatni uni yuzaga kеltiruvchi sabablarni hisobga olmagan holda o`rganadi, ya`ni jismlar vaziyatini aniqlab beradi. Dinamika esa jismlar harakatini yuzaga kеltiruvch sababni, ya`ni jismlarning tashqi ta`sirga bo’lgan munosabati qonunlarini o`rganadi. Demak fizikaning dinamika bo’limi-tashqi ta`sir natijasida jismlarning tinch yoki harakatda bo’lishi sababini o`rganadi.",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Turg'un tekis harakat",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  TeXView(
                    child: TeXViewInkWell(
                      id: "id_0",
                      child: TeXViewColumn(
                        children: [
                          TeXViewDocument(
                            r"""<p>                                
                       $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$</p>""",
                            style: TeXViewStyle(
                              backgroundColor: Colors.grey[850],
                              contentColor: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  TeXView(
                    child: TeXViewInkWell(
                      id: "id_0",
                      child: TeXViewDocument(
                        r"""<p>                                
                      
                        <style>
                          .card {
                            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                            transition: 0.3s;
                            width: 40%;
                          }

                          .card:hover {
                            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
                          }

                          .container {
                            padding: 2px 16px;


                        </style>
                        <div class="card">
                          <div class="container">
                            <p>
                              \begin{align}
                              \dot{x} & = \sigma(y-x) \\
                              \dot{y} & = \rho x - y - xz \\
                              \dot{z} & = -\beta z + xy
                              \end{align}
                            </p>
                          </div>
                        </div></p>""",
                        style: TeXViewStyle(
                          backgroundColor: Colors.grey[850],
                          contentColor: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
