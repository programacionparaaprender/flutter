import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto1/src/pages/providers/menu_provider.dart';
import 'package:proyecto1/src/utils/icono_string_util.dart';

//import 'package:proyecto1/src/pages/alert_page.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componenteas")
      ),
      body: _lista()
    );
  }
  Widget _lista(){
    //List<dynamic> opciones = 
    /* menuProvider.cargarData().then((opciones){
      print('_lista');
      print( opciones );
    }); */
    return FutureBuilder(
      future:menuProvider.cargarData(),
      initialData:[],
      //BuildContext  context
      builder: (context, AsyncSnapshot<List<dynamic>> sanpshot){
        print('builder');
        //print(sanpshot.data);
        return ListView(
        children: _listaItems(context,sanpshot.data),
              
        );
      },
    ); 
  /*   menuProvider.cargarData();
    return ListView(
      children: _listaItems(),
            
          ); */
  }
      
  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];
    /* if(data == null){
      return [];
    } */
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt["texto"]),
        leading:getIcon(opt['icon']),
        trailing:  Icon(Icons.keyboard_arrow_right,color: Colors.blue),
        onTap:(){
          /* final route = MaterialPageRoute(
            builder:( context ){
              return AlertPage();
            }
          );
          Navigator.push(context, route); */
          Navigator.pushNamed(context, opt["ruta"]);
        }

      );
      opciones..add(widgetTemp)
      ..add(Divider());
    });
    return opciones;
    /* return[
      ListTile(title:Text("Ejemplo1"),
      ),
      Divider(),
      ListTile(title:Text("Ejemplo1"),
      ),
      Divider(),
    ]; */ 
  }
}