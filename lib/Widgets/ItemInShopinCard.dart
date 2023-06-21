import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerprojectcard/Models/CardModels.dart';
class ItemInShopinCard extends StatelessWidget {
  const ItemInShopinCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
       children: [
           Padding(
             padding:  EdgeInsets.only(top: 8.0),
             child: Text("the totol price is:${Provider.of<CardModel>(context).Totprice}"),
           )
       ,  Expanded(
           child: Consumer<CardModel>(
             builder: (context, prod, child) {
               return   ListView.builder(itemBuilder: (context, index) {
                 return ListTile(
                  trailing:Text(prod.items[index].name),


                 );
               },
                 itemCount:prod.NumberOfItem ,

               );
             },

           ),
         ),
       ],
     )
    );
  }
}
