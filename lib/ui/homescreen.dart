import 'package:flutter/material.dart';
import 'package:product_app/buttons/simple_round_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      body: _buildBody(),

    );
  }

  _buildAppBar() {
    return AppBar(
//      leading: Icon(Icons.business_center),
      backgroundColor: Colors.blueGrey,
      title: Text("Products App"),
      actions: <Widget>[
        Icon(Icons.share,color: Colors.amberAccent),
        SizedBox(width: 15.0),
        Icon(Icons.add_shopping_cart,color: Colors.amberAccent),
        SizedBox(width: 15.0),
        Icon(Icons.account_circle,color: Colors.amberAccent),
        SizedBox(width: 15.0)
      ],

    );
  }

  _buildDrawer() {
   String img="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/ITunes_12.2_logo.png/768px-ITunes_12.2_logo.png";
    return Drawer(
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 50.0),
        child: Container(
          child: Image.network(img,width: 100.0,height: 100.0,),
        ),
        
        color: Colors.blueGrey,

      ),

    );
  }


  _buildBody() {
    return Container(
      color: Colors.brown,

    );
  }


}




