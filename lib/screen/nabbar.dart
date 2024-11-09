import 'package:flutter/material.dart';
import 'package:shoesstore/constant/colorss.dart';
import 'package:shoesstore/screen/dashbored.dart';
import 'package:shoesstore/screen/product_page.dart';

class Nabbar extends StatefulWidget {
  const Nabbar({super.key});

  @override
  State<Nabbar> createState() => _NabbarState();
}

class _NabbarState extends State<Nabbar> {

  int currentvalue =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: BG,
        currentIndex: currentvalue,
        onTap: (value){
          setState(() {
            currentvalue = value;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  getCurrentView() {
    if(currentvalue  == 0){
      return Dashbored();
    }else if(currentvalue  == 1){
      return ProductPage();
    }  else if (currentvalue  == 2){
      return Container(
        child: Center(child: Text("No Fav", style: TextStyle(fontSize: 20),)),
      );
    } else{
      return Container(
        child: Center(child: Text("Add your Profile :)", style: TextStyle(fontSize: 20),)),
      );
    }

  }
}
