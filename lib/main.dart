import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_app/Shoping_app/Provider_scrren/Cart_provider.dart';
import 'package:shoping_app/Shoping_app/View_scrren/Index_stak_scrren.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => Index_stak(),
        },
      ),
    ),
  );
}