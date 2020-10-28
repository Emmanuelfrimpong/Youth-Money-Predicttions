import 'package:flutter/material.dart';
import 'color-designs.dart';
import 'constants.dart';
import 'home-page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        navigatorKey: widget.navigatorKey,
        debugShowCheckedModeBanner: false,
        title: APP_NAME,
        theme: ThemeData(
          primaryColor: PRIMARY,
          brightness: Brightness.dark,
          fontFamily: 'LeonSans',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:HomePage()
    );
  }
}



