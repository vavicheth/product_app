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
        imageUrl: "https://image.coolblue.nl/422x390/products/1033438"
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
        return _buildListviewItem();
      });
  }

  _buildListviewItem() {
    return Container(
      child: Row(

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
