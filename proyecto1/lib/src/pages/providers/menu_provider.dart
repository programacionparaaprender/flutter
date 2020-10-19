//import 'package:flutter/material.dart' 
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider{
  List<dynamic> optiones = [];
  _MenuProvider(){
    cargarData();  
      }
    Future<List<dynamic>> cargarData() async {
      final resp = await rootBundle.loadString('data/menu_opts.json');
      Map dataMap = json.decode( resp );
      //print( dataMap['nombreApp'] );
      optiones = dataMap['rutas'];
      return optiones;
    }
    void cargarDataAntiguo() {
      rootBundle.loadString('data/menu_opts.json')
      .then((data){
        //print(data);
        Map dataMap = json.decode(data);
        //print(dataMap['nombreApp']);
        optiones = dataMap['rutas'];
      });
    }

}

final menuProvider = new _MenuProvider();
    
