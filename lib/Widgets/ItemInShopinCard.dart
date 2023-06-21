import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerprojectcard/Models/CardModels.dart';
class ItemInShopinCard extends StatelessWidget {
  const ItemInShopinCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(

          backgroundColor: Colors.black,

            title: Text("Shopping Cart With Providers"),centerTitle: true,),
     body:Column(

       children:
       [
           Padding(
             padding:  EdgeInsets.only(top:15),
             child: Text("the totol price is:${Provider.of<CardModel>(context).TotalPrice}"

               ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           )
         , Expanded(
           child: Consumer<CardModel>(
             builder: (context, prod, child) 
             {
               return   ListView.builder(itemBuilder: (context, index) 
               {
                 return Row(
                    children: [
                      Text("${prod.items[index].name }",style: TextStyle(fontSize: 30),)
                      ,SizedBox(height: 5,),
                      Spacer(), // Adds flexible space between Text and IconButton

                      IconButton(onPressed: () {
                        prod.DeletItem(prod.items[index]);
                      }, icon: Icon(Icons.delete) ,
                        padding: EdgeInsets.only(left:MediaQuery.of(context).viewInsets.right ),)
                    ],


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
