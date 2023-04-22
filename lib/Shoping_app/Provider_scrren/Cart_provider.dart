import 'package:flutter/cupertino.dart';

import '../Model_scrren/Model_class.dart';

class Cart_provider extends ChangeNotifier
{
  int i=0;

  List imageList=[
    "assets/image/top/1.png",
    "assets/image/top/2.png",
    "assets/image/top/3.png",
    "assets/image/top/4.png",
    "assets/image/top/5.png",
  ];

  List<Data_model> productList=[
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
    Data_model(img: "assets/image/item/i1.jpeg",line: "Best For Each",name: "Hudi",prise: 500,qa: 1,),
  ];

  void color()
  {

  }
}