
import 'package:flutter/material.dart';
//import 'package:proyecto1/src/pages/avatar_page.dart';
import 'package:proyecto1/src/pages/alert_page.dart';
//import 'package:proyecto1/src/pages/home_page.dart';

import 'package:proyecto1/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        print("Ruta llamada ${settings.name}");
        return MaterialPageRoute(
          builder:(BuildContext context) => AlertPage()
        );
      },
    );
  }
}