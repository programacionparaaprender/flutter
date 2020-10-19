import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);
  final int conteo = 10;
  //const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Título")
      ,centerTitle: true
      )
      ,body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Numero de clics:", 
            style:estiloTexto
          ),
          Text('$conteo', 
            style:estiloTexto
          )
          ],
        )
    ),floatingActionButton: FloatingActionButton(
      foregroundColor: Colors.black54,
      backgroundColor: Colors.yellow[600],
      elevation: 0,
      child: Icon(Icons.add),//Text("+"),
      onPressed: (){},
    ),
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}