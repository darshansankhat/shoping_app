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
    providerT = Provider.of<Cart_provider>(context, listen: true);
    providerF = Provider.of<Cart_provider>(context, listen: false);

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
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                //top
                SizedBox(
                  height: 174,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return topView(index);
                    },
                    itemCount: 4,
                  ),
                ),
                //kkdj
                SizedBox(height: 9),
                Container(
                  height: 9,
                  width: 29,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.yellow),
                ),
                //image
                SizedBox(height: 19),
                Container(
                  height: 249,
                  color: Colors.yellow,
                  child: Image.asset("assets/image/top/ad.png"),
                ),
                //item
                SizedBox(height: 19),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "   Just in",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all   ",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                //items all
                SizedBox(height: 20),
                SizedBox(
                  height: 199,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return item(index);
                    },
                    itemCount: 9,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget topView(int index) {
    return Container(
      height: 150,
      width: 250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("${providerF!.imageList[index]}")),
    );
  }

  Widget item(int index) {
    return Container(
      height: 200,
      width: 175,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("${providerF!.productList[index].img}",height: 150,width: 150,),
          ],
        ),
      ),
    );
  }
}
