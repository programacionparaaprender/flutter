import 'package:flutter/material.dart';
//import 'package:flutter_vs/src/pages/home_page.dart';
import 'package:flutter_vs/src/pages/contador_pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      home: Center(
        //child:HomePage()
        child:ContadorPage()
      ),
      
    );
  }
}  