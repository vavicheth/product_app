import 'package:flutter/material.dart';

class MyHotNews extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _buildDrawer(context),
      drawer: _buildDrawer(context),
      appBar: _buildAppbar(),
      body: _buldBody(),
      bottomNavigationBar: _buildButtombar(),

    );
  }

  _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.blue,
      leading: InkWell(
        onTap: (){
          _scaffoldKey.currentState.openDrawer();
  },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset("assets/images/logo.png",fit: BoxFit.contain,),
        ),
      ),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(child: Text("Hot News"),onTap:(){
            //TODO: To do event hot news
            print("Hot News Clicked!");
          },),
          Text("Hot Sport"),

        ],
      ),

      actions: <Widget>[
        IconButton(icon: Icon(Icons.settings), onPressed: (){
          //TODO: Event Settings
          _scaffoldKey.currentState.openEndDrawer();
        },),
      ],

    );
  }

  _buldBody() {}

  _buildButtombar() {

    return BottomAppBar(
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(icon: Icon(Icons.home), onPressed: (){}),
          IconButton(icon: Icon(Icons.airplay), onPressed: (){}),
          IconButton(icon: Icon(Icons.movie), onPressed: (){}),
          IconButton(icon: Icon(Icons.menu), onPressed: (){}),
        ],
      ),
    );
  }

  _buildDrawer(context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg_drawer_01.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              duration: Duration(microseconds: 1000),
              child: Image.asset("assets/images/logo.png",fit: BoxFit.contain,),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
              onTap: (){
                //TODO: press home menu
                print("Home clicked!");
              },
            ),
            ListTile(
              leading: Icon(Icons.chrome_reader_mode, color: Colors.white,),
              title: Text("Documents",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
              onTap: (){
                //TODO: press document menu
                print("Document clicked!");
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_android, color: Colors.white,),
              title: Text("Contact us",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
              onTap: (){
                //TODO: press contact menu
                print("contact clicked!");
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white,),
              title: Text("About us",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
              onTap: (){
                //TODO: press about menu
                print("about clicked!");
              },
            ),
          ],
        ),
      ),
    );

  }
}
