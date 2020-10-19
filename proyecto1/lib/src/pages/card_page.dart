import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2()
        ])
    );
  }
  Widget _cardTipo2(){
    final card = Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://th.bing.com/th/id/OIP.Wn0oFdNRp0jLji6UWamb1gHaEK?pid=Api&rs=1'),
            placeholder: AssetImage('assets/OIP.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover
          ), 
          /* Image(
            image:NetworkImage('https://th.bing.com/th/id/OIP.Wn0oFdNRp0jLji6UWamb1gHaEK?pid=Api&rs=1') 
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Ejemplo texto bajo imagen')
          )
          
        ],
      )
    );
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0) ,
        boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
        )]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child:card 
      ),
    );
  }
  Widget _cardTipo1(){
      return Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading:Icon(Icons.photo_album,color:Colors.blue),
              title: Text('Soy el título de esta tarjeta'),
              subtitle: Text('Soy el subtitulo de esta tarjeta'), 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // ignore: missing_required_param
                FlatButton(
                  child: Text("Cancelar"),
                  onPressed:(){
                    
                  }
                ),
                FlatButton(
                  child: Text("Ok"),
                  onPressed:(){
                    
                  }
                )
              ],
            )
          
          ],
        )      
      );
  }
}