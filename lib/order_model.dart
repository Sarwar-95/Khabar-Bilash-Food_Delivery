import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderModel extends ChangeNotifier {
  
  final List _itemsUndal = [
    [
      "Chicken Rice Bowls",
      "100",
      "https://i1.wp.com/healthyvegrecipes.com/wp-content/uploads/2014/05/IMG_1152.jpg"
    ],
    [
      "Brown Rice Bowls",
      "550",
      "https://data.thefeedfeed.com/static/2020/04/16/15870736275e98d25b874a7.JPG"
    ],
    [
      "Vegetable Rice Bowls",
      "380",
      "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"
    ],
    [
      "Tehary Rice Bowls",
      "300",
      "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"
    ],
  ];

  get itemsUndal  => _itemsUndal ;

//=================================================================

 final List _itemsPachBhai = [
    [
      "Chicken Rice Bowls",
      "230",
      "https://i.ytimg.com/vi/AudJI7yaBrs/maxresdefault.jpg"
    ],
    [
      "Brown Rice Bowls",
      "190",
      "https://www.dhakafoodster.com/wp-content/uploads/2021/06/Sultan%E2%80%99s-Diner-Mirpur-Kacchi-Biriyani-1-1024x918.jpg"
    ],
    [
      "Vegetable Rice Bowls",
      "410",
      "https://foodfusion.com/wp-content/uploads/2019/01/Kachay-Gosht-ki-Biryani-Recipe-by-Food-fusion-2.jpg"
    ],
    [
      "Tehary Rice Bowls",
      "120",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Kacchi_Biryani.jpg/1280px-Kacchi_Biryani.jpg"
    ],
  ];

  get itemsPachBhai => _itemsPachBhai;

 //====================================================

  final List _itemsPanchi = [
    [
      "Chicken Rice Bowls",
      "260",
      "https://kitchenofdebjani.com/wp-content/uploads/2017/10/Untitled-1-1-1.jpg.webp"
    ],
    [
      "Brown Rice Bowls",
      "210",
      "https://rumkisgoldenspoon.com/wp-content/uploads/2021/05/Bhuna-khichuri-recipe.jpg"
    ],
    [
      "Vegetable Rice Bowls",
      "280",
      "https://modernmealmakeover.com/wp-content/uploads/2020/10/IMG_6548-4.jpg"
    ],
    [
      "Tehary Rice Bowls",
      "120",
      "https://recipes.timesofindia.com/thumb/msid-53096628,width-1600,height-900/53096628.jpg"
    ],
  ];

  get itemsPanchi => _itemsPanchi; 

  //==================================================

  final List _itemsBustine = [
    [
      "Chicken Rice Bowls -D",
      "300",
      "https://i1.wp.com/healthyvegrecipes.com/wp-content/uploads/2014/05/IMG_1152.jpg"
    ],
    [
      "Brown Rice Bowls -D",
      "250",
      "https://data.thefeedfeed.com/static/2020/04/16/15870736275e98d25b874a7.JPG"
    ],
    [
      "Vegetable Rice Bowls -D",
      "180",
      "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"
    ],
    [
      "Tehary Rice Bowls -D",
      "500",
      "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"
    ],
  ];

  get itemsBustine => _itemsBustine; 
  
  //===================================================
  
  final List _cartAdd = [];

  get cartAdd => _cartAdd;

  void cartItemsAdd(int index, int track) {

    if(track==1)
    {
      _cartAdd.add(itemsUndal[index]);
    }

    if(track==2)
    {
      _cartAdd.add(itemsPachBhai[index]);
    }
    
    if(track==3)
    {
      _cartAdd.add(itemsPanchi[index]);
    }

    if(track==4)
    {
      _cartAdd.add(itemsBustine[index]);
    }
    notifyListeners();
  }

  void removeItem(int index) {
    _cartAdd.removeAt(index);
    print("Asi ba");
    notifyListeners();
  }

  String calculate() {
    double totalPrice = 0;
    for (int i = 0; i < _cartAdd.length; i++) {
      totalPrice += double.parse(_cartAdd[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
