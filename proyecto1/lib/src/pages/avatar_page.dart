import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(appBar:AppBar(
        title: Text("AlertPage"),
        actions: <Widget>[
            Container(
              padding:EdgeInsets.all(5.0),
              child:CircleAvatar(
                  backgroundImage: NetworkImage('https://pixnio.com/free-images/2017/02/25/2017-02-25-17-19-17.jpg'),
                  radius: 25.0
              )
            ),
            Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple
            )
          ),
          
        ],
        
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://pixnio.com/free-images/2017/02/25/2017-02-25-17-19-17.jpg'),
          placeholder: AssetImage('assets/OIP.jpg'),    
          fadeInDuration: Duration(milliseconds: 200),    
        )    
      )
      ),
    );
  }
}