// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:fizika/Home.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

const routeHome = '/';
const routeSettings = '/settings';
const routePrefixDeviceSetup = '/setup/';
const routeDeviceSetupStart = '/setup/$routeDeviceSetupStartPage';
const routeDeviceSetupStartPage = 'find_devices';
const routeDeviceSetupSelectDevicePage = 'select_device';
const routeDeviceSetupConnectingPage = 'connecting';
const routeDeviceSetupFinishedPage = 'finished';

class TransitionRoute extends PageRouteBuilder {
  final Widget? widget;
  final String? routeName;
  TransitionRoute({this.widget, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget!;
          },
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
        );
}

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String theme = "light";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: (settings) {
      //   print(settings.name);
      //   if (RegExp(r'^\/family\?fid=(?<fid>[^\/]+)\&pid=(?<pid>[^\/]+)$')
      //       .hasMatch(settings.name!)) {
      //     var uri = Uri.parse(settings.name!);
      //     // print(uri.path);
      //     // print(uri.path[0]);
      //     // print(uri.pathSegments);
      //     // print(uri.pathSegments[0]);
      //     // print(uri.query);
      //     // print(uri.queryParameters);
      //     // print(uri.queryParameters[0]);

      //     return TransitionRoute(
      //       widget: NewScreen(title: uri.path[0]),
      //       routeName: settings.name,
      //     );
      //   } else {
      //     var uri = Uri.parse(settings.name!);

      //     return TransitionRoute(widget: NewScreen(title: uri.path[0]));
      //   }
      // },
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
      theme: theme == "light"
          ? ThemeData.light().copyWith(
              iconTheme: IconThemeData(
                size: 33,
                color: Colors.grey,
              ),
              brightness: Brightness.light,
              //primarySwatch: Colors.grey,
              primaryColor: Colors.white,
              primaryIconTheme: IconThemeData(color: Colors.grey, size: 30),
              primaryColorBrightness: Brightness.light,
              accentColor: Colors.grey[400],
              accentColorBrightness: Brightness.light,
              scaffoldBackgroundColor: Colors.transparent,
              inputDecorationTheme: InputDecorationTheme(
                errorStyle: TextStyle(
                  color: Colors.red[600],
                  fontSize: 21.5,
                  fontWeight: FontWeight.normal,
                ),
                counterStyle: TextStyle(color: Colors.black),
                fillColor: Colors.transparent,
                contentPadding: const EdgeInsets.only(
                  top: 0.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 14.0,
                ),
                filled: true,
                isDense: false,
                suffixStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                hintStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                focusedBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(7.5),
                  //   topRight: Radius.circular(7.5),
                  //   bottomLeft: Radius.circular(7.5),
                  //   bottomRight: Radius.circular(7.5),
                  // ),
                  //borderRadius: BorderRadius.circular(2.0),
                  borderSide: BorderSide(color: Colors.blue[700]!, width: 1.2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 190, 190, 190), width: 1.2),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1.2,
                    color: Color.fromARGB(255, 190, 190, 190),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Colors.red[600]!, width: 1.2),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color: Colors.red[600]!, width: 1.2),
                ),
              ),
              textTheme: TextTheme(
                headline1: TextStyle(
                  color: Colors.grey,
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
                headline2: TextStyle(
                  color: Colors.grey,
                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                ),
                headline3: TextStyle(
                  color: Colors.grey,
                  fontSize: 30.5,
                  fontWeight: FontWeight.normal,
                ),
                headline4: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                headline5: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 21,
                  fontWeight: FontWeight.normal,
                ),
                headline6: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
                bodyText1: TextStyle(
                  color: Colors.black38,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
                subtitle1: TextStyle(
                  //TextBar
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
                subtitle2: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              appBarTheme: AppBarTheme(
                brightness: Brightness.light,
                //color: Colors.white,
                elevation: 0,
                //shadowColor: Colors.blue,
                iconTheme: IconThemeData(color: Colors.grey, size: 33),
                actionsIconTheme: IconThemeData(color: Colors.grey, size: 33),
                titleTextStyle: TextStyle(
                    // //color: Color.fromARGB(255, 3, 78, 162),
                    // color: Colors.black87,
                    // fontFamily: "HP Simplified",
                    // fontWeight: FontWeight.normal,
                    // fontStyle: FontStyle.normal,
                    // fontSize: 30,
                    // letterSpacing: 0.0,
                    ),
                titleSpacing: NavigationToolbar.kMiddleSpacing,
                textTheme: TextTheme(
                  headline1: TextStyle(
                    color: Colors.grey,
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                  headline2: TextStyle(
                    color: Colors.grey,
                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                  ),
                  headline3: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.5,
                    fontWeight: FontWeight.normal,
                  ),
                  headline4: TextStyle(
                    color: Colors.black87,
                    fontSize: 21,
                    fontWeight: FontWeight.normal,
                  ),
                  headline5: TextStyle(
                    color: Colors.grey,
                    fontSize: 21.5,
                    fontWeight: FontWeight.normal,
                  ),
                  headline6: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  bodyText2: TextStyle(
                    color: Colors.amber,
                    fontSize: 15.0,
                    fontFamily: 'Hind',
                  ),
                  button: TextStyle(
                    color: Colors.pink[900],
                  ),
                ),
              ),
              tabBarTheme: TabBarTheme(
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                labelColor: Colors.white, //Color.fromARGB(255, 50, 50, 50),
                unselectedLabelStyle: TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                ),
                unselectedLabelColor: Colors.grey[300],
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.blue[200]!, width: 3.5),
                ),
              ),

              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
              outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  primary: Colors.grey[500],
                  shape: StadiumBorder(),
                  side: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                  primary: Colors.transparent,
                  onPrimary: Colors.grey,
                  onSurface: Colors.red,
                  shadowColor: Colors.transparent,
                  shape: StadiumBorder(),
                  // side: BorderSide(
                  //   color: Colors.transparent,
                  // ),
                ),
              ),
              buttonBarTheme: ButtonBarThemeData(
                alignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
              ),
              splashColor: Colors.blue,
              cardTheme: CardTheme(
                color: Colors.white,
                elevation: 2,
              ),
              //buttonColor: Colors.white,
              buttonTheme: ButtonThemeData(
                disabledColor: Colors.black12,
                focusColor: Colors.black12,
                buttonColor: Colors.white,
                splashColor: Colors.red.withAlpha(30),
                //textTheme: ButtonTextTheme.primary,
                colorScheme: ColorScheme(
                  primary: Colors.grey,
                  primaryVariant: Colors.grey[100]!,
                  secondary: Colors.green,
                  secondaryVariant: Colors.yellow,
                  background: Colors.red,
                  surface: Colors.grey[900]!,
                  brightness: Brightness.light,
                  error: const Color(0xffcf6679),
                  onPrimary: Colors.black,
                  onSecondary: Colors.black,
                  onSurface: Colors.white,
                  onBackground: Colors.white,
                  onError: Colors.black,
                ),
              ),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.white,
                splashColor: Colors.blue.withAlpha(30),
                highlightElevation: 6,
                elevation: 4,
              ),

              bottomAppBarTheme: BottomAppBarTheme(
                color: Colors.white,
                shape: CircularNotchedRectangle(),
                elevation: 3,
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.grey,
                unselectedItemColor: Colors.grey,
              ),
              dividerTheme: const DividerThemeData(
                color: Colors.black12,
                thickness: 1,
                // space: 0,
                // indent: 0,
                // endIndent: 0,
              ),
            )
          : ThemeData.dark().copyWith(
              iconTheme: IconThemeData(
                //size: 30,
                color: Colors.white,
              ),
              brightness: Brightness.dark,
              //primarySwatch: Colors.grey,
              primaryColor: Colors.grey[900],
              primaryIconTheme: IconThemeData(color: Colors.white, size: 30),
              primaryColorBrightness: Brightness.light,
              accentColor: Colors.white,
              accentColorBrightness: Brightness.dark,
              scaffoldBackgroundColor: Colors.transparent,
              textTheme: TextTheme(
                headline1: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.normal,
                ),
                headline2: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                headline3: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                ),
                headline4: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.normal,
                ),
                headline5: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                ),
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
                bodyText1: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
                subtitle1: TextStyle(
                  //TextBar
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
                subtitle2: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              appBarTheme: AppBarTheme(
                brightness: Brightness.dark,
                color: Colors.grey[900],
                elevation: 3,
                //shadowColor: Colors.blue,
                iconTheme: IconThemeData(color: Colors.white, size: 30),
                actionsIconTheme: IconThemeData(color: Colors.white, size: 30),
                // titleTextStyle: TextStyle(
                //     // //color: Color.fromARGB(255, 3, 78, 162),
                //     // color: Colors.black87,
                //     // fontFamily: "HP Simplified",
                //     // fontWeight: FontWeight.normal,
                //     // fontStyle: FontStyle.normal,
                //     // fontSize: 30,
                //     // letterSpacing: 0.0,
                //     ),
                titleSpacing: NavigationToolbar.kMiddleSpacing,
                textTheme: TextTheme(
                  headline1: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.normal,
                  ),
                  headline2: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                  headline3: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                  ),
                  headline4: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.normal,
                  ),
                  headline5: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
                  headline6: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                  bodyText2: TextStyle(
                    color: Colors.amber,
                    fontSize: 15.0,
                    fontFamily: 'Hind',
                  ),
                  button: TextStyle(
                    color: Colors.pink[900],
                  ),
                ),
              ),
              tabBarTheme: TabBarTheme(
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                labelColor: Colors.white, //Color.fromARGB(255, 50, 50, 50),
                unselectedLabelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                unselectedLabelColor: Colors.white,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.red[600]!, width: 3.5),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                fillColor: Colors.grey[800],
                filled: true,
                isDense: false,
                //focusedBorder:
                //hintStyle: TextStyle(color: Colors.black),
              ),
              outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  primary: Colors.grey[500],
                  shape: StadiumBorder(),
                  side: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.grey[500],
                  onSurface: Colors.red,
                  shadowColor: Colors.transparent,
                  shape: StadiumBorder(),
                  // side: BorderSide(
                  //   color: Colors.transparent,
                  // ),
                ),
              ),
              buttonBarTheme: ButtonBarThemeData(
                alignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
              ),
              splashColor: Colors.blue,
              cardTheme: CardTheme(
                color: Colors.grey[800],
                shadowColor: Colors.grey[700],
                elevation: 3,
              ),
              buttonColor: Colors.grey[400],
              buttonTheme: ButtonThemeData(
                disabledColor: Colors.black12,
                focusColor: Colors.black12,
                buttonColor: Colors.grey[900],
                splashColor: Colors.red.withAlpha(30),
                //textTheme: ButtonTextTheme.primary,
                colorScheme: ColorScheme(
                  primary: Colors.red,
                  primaryVariant: Colors.grey[100]!,
                  secondary: Colors.green,
                  secondaryVariant: Colors.yellow,
                  background: Colors.red,
                  surface: Colors.grey[900]!,
                  brightness: Brightness.light,
                  error: const Color(0xffcf6679),
                  onPrimary: Colors.black,
                  onSecondary: Colors.black,
                  onSurface: Colors.white,
                  onBackground: Colors.white,
                  onError: Colors.black,
                ),
              ),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.white,
                splashColor: Colors.blue.withAlpha(30),
                highlightElevation: 6,
                elevation: 4,
              ),

              bottomAppBarTheme: BottomAppBarTheme(
                color: Colors.grey[900],
                shape: CircularNotchedRectangle(),
                elevation: 3,
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.grey[900],
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey,
              ),
              dividerTheme: const DividerThemeData(
                color: Colors.white,
                thickness: 1,
                // space: 0,
                // indent: 0,
                // endIndent: 0,
              ),
            ),
    );
  }
}

class NewScreen extends StatelessWidget {
  final String? title;

  const NewScreen({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, routeSettings);
            },
          ),
        ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, routeSettings);
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF222222),
                ),
                child: Center(
                  child: Icon(
                    Icons.lightbulb,
                    size: 175,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Add your first bulb',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).pushNamed(routeDeviceSetupStart);

          Navigator.of(context).pushNamed('/family?fid=${2}&pid=${3}');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Welcome'),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.pushNamed(context, routeSettings);
          },
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(8, (index) {
            return Container(
              width: double.infinity,
              height: 54,
              margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF222222),
              ),
            );
          }),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text('Settings'),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@immutable
class SetupFlow extends StatefulWidget {
  final String setupPageRoute;

  const SetupFlow({
    Key? key,
    required this.setupPageRoute,
  }) : super(key: key);

  static SetupFlowState of(BuildContext context) {
    return context.findAncestorStateOfType<SetupFlowState>()!;
  }

  @override
  SetupFlowState createState() => SetupFlowState();
}

class SetupFlowState extends State<SetupFlow> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  void _onDiscoveryComplete() {
    _navigatorKey.currentState!.pushNamed(routeDeviceSetupSelectDevicePage);
  }

  void _onDeviceSelected(String deviceId) {
    _navigatorKey.currentState!.pushNamed(routeDeviceSetupConnectingPage);
  }

  void _onConnectionEstablished() {
    _navigatorKey.currentState!.pushNamed(routeDeviceSetupFinishedPage);
  }

  Future<void> _onExitPressed() async {
    final isConfirmed = await _isExitDesired();

    if (isConfirmed && mounted) {
      _exitSetup();
    }
  }

  Future<bool> _isExitDesired() async {
    return await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Are you sure?'),
                content: Text(
                    'If you exit device setup, your progress will be lost.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Leave'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('Stay'),
                  ),
                ],
              );
            }) ??
        false;
  }

  void _exitSetup() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _isExitDesired,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: _onExitPressed,
            icon: Icon(Icons.chevron_left),
          ),
          title: Text('Bulb Setup'),
        ),
        body: Navigator(
          key: _navigatorKey,
          initialRoute: widget.setupPageRoute,
          onGenerateRoute: _onGenerateRoute,
        ),
      ),
    );
  }

  Route _onGenerateRoute(RouteSettings settings) {
    late Widget page;
    switch (settings.name) {
      case routeDeviceSetupStartPage:
        page = WaitingPage(
          message: 'Searching for nearby bulb...',
          onWaitComplete: _onDiscoveryComplete,
        );
        break;
      case routeDeviceSetupSelectDevicePage:
        page = SelectDevicePage(
          onDeviceSelected: _onDeviceSelected,
        );
        break;
      case routeDeviceSetupConnectingPage:
        page = WaitingPage(
          message: 'Connecting...',
          onWaitComplete: _onConnectionEstablished,
        );
        break;
      case routeDeviceSetupFinishedPage:
        page = FinishedPage(
          onFinishPressed: _exitSetup,
        );
        break;
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }

  PreferredSizeWidget _buildFlowAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: _onExitPressed,
        icon: Icon(Icons.chevron_left),
      ),
      title: Text('Bulb Setup'),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////

class WaitingPage extends StatefulWidget {
  const WaitingPage({
    Key? key,
    required this.message,
    required this.onWaitComplete,
  }) : super(key: key);

  final String message;
  final VoidCallback onWaitComplete;

  @override
  _WaitingPageState createState() => _WaitingPageState();
}

class _WaitingPageState extends State<WaitingPage> {
  @override
  void initState() {
    super.initState();
    _startWaiting();
  }

  Future<void> _startWaiting() async {
    await Future<dynamic>.delayed(const Duration(seconds: 3));

    if (mounted) {
      widget.onWaitComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 32),
              Text(widget.message),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectDevicePage extends StatelessWidget {
  const SelectDevicePage({
    Key? key,
    required this.onDeviceSelected,
  }) : super(key: key);

  final void Function(String deviceId) onDeviceSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select a nearby device:',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) {
                      return const Color(0xFF222222);
                    }),
                  ),
                  onPressed: () {
                    onDeviceSelected('22n483nk5834');
                  },
                  child: Text(
                    'Bulb 22n483nk5834',
                    style: TextStyle(
                      fontSize: 24,
                    ),
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

class FinishedPage extends StatelessWidget {
  const FinishedPage({
    Key? key,
    required this.onFinishPressed,
  }) : super(key: key);

  final VoidCallback onFinishPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF222222),
                ),
                child: Center(
                  child: Icon(
                    Icons.lightbulb,
                    size: 175,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Bulb added!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.resolveWith((states) {
                    return const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12);
                  }),
                  backgroundColor: MaterialStateColor.resolveWith((states) {
                    return const Color(0xFF222222);
                  }),
                  shape: MaterialStateProperty.resolveWith((states) {
                    return StadiumBorder();
                  }),
                ),
                onPressed: onFinishPressed,
                child: Text(
                  'Finish',
                  style: TextStyle(
                    fontSize: 24,
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
