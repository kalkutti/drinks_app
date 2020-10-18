import 'package:flutter/material.dart';

import 'book_router_delegate.dart';
import 'drinks_app_state.dart';

void main() {
  runApp(MyDrinksApp());
}

class MyDrinksApp extends StatefulWidget {
  @override
  _MyDrinksAppState createState() => _MyDrinksAppState();
}

class _MyDrinksAppState extends State<MyDrinksApp> {
  BookRouterDelegate _routerDelegate = BookRouterDelegate();
  BookRouteInformationParser _routeInformationParser =
  BookRouteInformationParser();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
