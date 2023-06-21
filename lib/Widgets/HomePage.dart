import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerprojectcard/Models/CardModels.dart';
import 'package:providerprojectcard/Models/Item.dart';
import 'package:providerprojectcard/Widgets/ItemInShopinCard.dart';
class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> product=[
    Item(name: 'Iphone11', price: 5000),
    Item(name: 'Iphone12', price: 10000),
    Item(name: 'Iphone13', price: 15000),
    Item(name: 'Iphone14', price: 20000),
    Item(name: 'caseiphone11',price: 500),
    Item(name: 'caseiphone12',price: 500),
    Item(name: 'caseiphone13',price: 500)
    , Item(name: 'caseiphone14',price: 500)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white54,
      appBar: AppBar(
       
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Shopping Cart With Providers ",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            
        
        ),
        actions: [


          Row(children: [
            IconButton(onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemInShopinCard()));
            } ,icon:Icon(Icons.shopping_cart),),
            Padding(padding: EdgeInsets.only(right: 3,left: 3)
              ,child: Text("${Provider.of<CardModel>(context).items.length}"),
            ),],)
        ],
      ),
      body:ListView.builder(
        itemBuilder: (context, index) {
       return Consumer<CardModel>(
         builder: (context, value, child) {
        return   ListTile(
             title:Text("${index+1}-  "+"${product[index].name}",style: TextStyle(color: Colors.white ,fontSize: 25),),
             subtitle:Text("${product[index].price}",style: TextStyle(color: Colors.white ,fontSize: 20)) ,
             trailing: IconButton(
               onPressed: () {
                 value.AddItem(product[index]);
               },
               icon: Icon(Icons.add,size: 30,color: Colors.white,),


             ),

           );
         },

       );
      },
        itemCount:product.length ,),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ItemInShopinCard()),
            );
          },
          child: Icon(Icons.shopping_cart),
        ),

    );
  }
}

