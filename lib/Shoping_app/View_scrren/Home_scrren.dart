import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider_scrren/Cart_provider.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {

  Cart_provider? providerT;
  Cart_provider? providerF;

  @override
  Widget build(BuildContext context) {

    providerT=Provider.of<Cart_provider>(context,listen: true);
    providerF=Provider.of<Cart_provider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Darshan",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.notifications_none_sharp,
              size: 35,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.favorite_border_rounded,
              size: 30,
              color: Colors.black,
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            //top
            SizedBox(
              height: 175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return topView(index);
                },
                itemCount: 5,
              ),
            ),
            //kkdj
            SizedBox(height: 10),
            Container(
              height: 10,
              width: 30,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.yellow
             ),
            ),
            //image
            SizedBox(height: 20),
            Container(
              height: 250,
              color: Colors.yellow,
              child: Image.asset("assets/image/top/ad.png"),
            )
          ],
        ),
      ),
    );
  }

  Widget topView(int index) {
    return Container(
      height: 175,
      width: 250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("${providerF!.imageList[index]}")),
    );
  }
}
