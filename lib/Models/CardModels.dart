import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:providerprojectcard/Models/Item.dart';


class CardModel extends ChangeNotifier{
double Totprice=0.0;
List<Item> items=[];

void AddItem(Item item)
{
 items.add(item);
 Totprice+=item.price;
 notifyListeners();
}
double get TotalPrice{
  notifyListeners();
  return Totprice;


}
int get NumberOfItem{
  return items.length;

}
List<Item> get CartShopping{
  return items;
}

void DeletItem(Item item)
{
  items.remove(item);
  Totprice-=item.price;
  notifyListeners();
}


}