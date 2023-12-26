import 'package:flutter/base_classes.dart';
// import 'package:flutter_test';

// function main ----- ----- ----- ----- ----- //

void main() => runApp(MyApp());

// class MyApp ----- ----- ----- ----- ----- //

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      Application name
        title: 'Mind Map Flutter',
        // Application theme data,
        // you can set the colors for the application as you want
        theme: ThemeData(
          primarySwatch: Colors.purple ,
        ),
        // A widget which will be started on application startup
        home: MyHomePage(title: 'Mind Map Flutter - Home Page'),
    );
  }
}

//class MyHomePage extends StatelessWidget {
//  final String title;
//  const MyHomePage({super.key, required this.title});

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
// The title text which will be shown on the action bar
//        title: Text(title),
//      ),
//      body: Center(
//        child: Text(
//          'Hello, World!',
//        ),
//      ),
//    );
//  }
//}
