import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Items> items=[];

  @override
  void initState() {

    super.initState();
    
    items.add(new Items(
        title: "iPhone X Max",
        price: 1300.0,
//        imageUrl: "https://image.coolblue.nl/422x390/products/1033438"
    ));
    items.add(new Items(
        title: "iPhone Xs",
        price: 1000.0,
        imageUrl: "https://image.coolblue.nl/422x390/products/1033438"
    ));
    items.add(new Items(
        title: "iPhone X Max",
        price: 1300.0,
        imageUrl: "https://image.coolblue.nl/422x390/products/1033438"
    ));

    items.add(new Items(
        title: "iPhone X Max",
        price: 1300.0,
        imageUrl: "https://image.coolblue.nl/422x390/products/1033438"
    ));
    items.add(new Items(
        title: "Samsung",
        price: 1100.0,
        imageUrl: "https://image.coolblue.nl/422x390/products/1033438"
    ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Product"),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      color: Colors.grey,
      child: _buildListView(),
    );
  }

  _buildListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return _buildListviewItem(items[index]);
      });
  }

  _buildListviewItem(Items itemAtIndex) {
    return Container(
      color: Colors.indigo[50],
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 5.0),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10.0),
      child: Row(

        children: <Widget>[
          Container(
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              image: DecorationImage(image: NetworkImage(itemAtIndex.imageUrl), fit: BoxFit.contain),
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(
                  itemAtIndex.title,
                  style: TextStyle(fontSize: 18.0,color: Colors.black),
                ),

                Text(
                  itemAtIndex.price.toString(),
                  style: TextStyle(fontSize: 18.0,color: Colors.black),
                ),

              ],
            ),

          ),

        ],

      ),
    );
  }
}

class Items {
  String title;
  double price;
  String imageUrl;
  Items({this.title, this.price, this.imageUrl = "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1551208882-samsung-galaxy-s10e-smartphone-1550695757.jpg"});
}
