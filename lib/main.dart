import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerprojectcard/Models/CardModels.dart';
import 'package:providerprojectcard/Widgets/HomePage.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) =>CardModel(),
    child:MaterialApp(

      home: HomePage(),
      // theme: ThemeData(
      //   textTheme: TextTheme
      //     (
      //     bodyText1: TextStyle(
      //       color: Colors.white,
      //     ),
      //   )
      // ),
    )
    );
  }
}
