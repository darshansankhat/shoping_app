import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_app/Shoping_app/Provider_scrren/Cart_provider.dart';
import 'package:shoping_app/Shoping_app/View_scrren/Home_scrren.dart';

class Index_stak extends StatefulWidget {
  const Index_stak({Key? key}) : super(key: key);

  @override
  State<Index_stak> createState() => _Index_stakState();
}

class _Index_stakState extends State<Index_stak> {

  Cart_provider? providerT;
  Cart_provider? providerF;

  @override
  Widget build(BuildContext context) {

    providerT=Provider.of<Cart_provider>(context,listen: true);
    providerF=Provider.of<Cart_provider>(context,listen: false);

    return SafeArea(child: Scaffold(
      body: IndexedStack(
        index: providerT!.i,
        children: [
          Home_scrren(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //home
              InkWell(
                onTap: () {
                  providerT!.i=0;
                },
                child: Container(
                  child: Column(
                    children: [
                      Icon(Icons.home,size: 30,color: Colors.grey,),
                      Text("Home",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ],
                  ),
                ),
              ),
              //serch
              Column(
                children: [
                  Icon(Icons.search_rounded,size: 30,color: Colors.grey,),
                  Text("Search",style: TextStyle(fontSize: 15,color: Colors.grey),)
                ],
              ),
              //brand
              Column(
                children: [
                  Icon(Icons.branding_watermark,size: 30,color: Colors.grey,),
                  Text("Brand",style: TextStyle(fontSize: 15,color: Colors.grey),)
                ],
              ),
              //bag
              Column(
                children: [
                  Icon(Icons.shopping_bag,size: 30,color: Colors.grey,),
                  Text("Bag",style: TextStyle(fontSize: 15,color: Colors.grey),)
                ],
              ),
              //profile
              Column(
                children: [
                  Icon(Icons.person,size: 30,color: Colors.grey,),
                  Text("Profile",style: TextStyle(fontSize: 15,color: Colors.grey),)
                ],
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
