import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }

}

class _ContadorPageState extends State<ContadorPage>{
  TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Stateful")
      ,centerTitle: true
      )
      ,body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Numero de clics:", 
            style:_estiloTexto
          ),
          Text('$_conteo', 
            style:_estiloTexto
          )
          ],
        )
    ),floatingActionButton: 
    _crearBotones(),
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //para que el botón no se salga de la pantalla
      SizedBox(width: 20),
      botonresetear(),
      Expanded(child: SizedBox()),
      botonsumar(),
      SizedBox(width: 5),
      botonrestar()]
    );
  }
  void _agregar(){
        print("hola mundo");
        //_conteo++;
        setState(() {
          //se mantiene el valor
          _conteo++;
        });
  }
  void _sustraer(){
        //print("hola mundo");
        //_conteo--;
        setState(() {
          _conteo--;
        });
  }
  void _reset(){
    //print("hola mundo");
    //_conteo++;
    setState(() {
      //se mantiene el valor
      _conteo = 0;
    });
  }
  Widget botonresetear() {
    return FloatingActionButton(
      foregroundColor: Colors.black54,
      backgroundColor: Colors.yellow[600],
      elevation: 0,
      child: Icon(Icons.add_alarm),//Text("+"),
      onPressed: _reset,
    );
  }
  
  Widget botonsumar() {
    return FloatingActionButton(
      foregroundColor: Colors.black54,
      backgroundColor: Colors.yellow[600],
      elevation: 0,
      child: Icon(Icons.add),//Text("+"),
      onPressed: _agregar,
    );
  }
  Widget botonrestar() {
    return FloatingActionButton(
      foregroundColor: Colors.black54,
      backgroundColor: Colors.yellow[600],
      elevation: 0,
      child: Icon(Icons.remove),//Text("+"),
      onPressed: _sustraer,
    );
  }
}