import 'package:flutter/material.dart';
import 'package:shoesstore/constant/colorss.dart';
import 'package:shoesstore/models/big_product.dart';
import 'package:shoesstore/screen/product_page.dart';
import 'package:shoesstore/screen/product_pages.dart';
import 'package:shoesstore/screen/product_pagese.dart';

import '../models/popular_card.dart';


class Dashbored extends StatefulWidget {
  const Dashbored({super.key});

  @override
  State<Dashbored> createState() => _DashboredState();
}

class _DashboredState extends State<Dashbored> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: SafeArea(

          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 20,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.search_outlined)),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 250,
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/banner.png'),
                            fit: BoxFit.cover,
                            opacity: 0.7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    "50% off",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'fontmainn',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'On everything today',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontFamily: 'fontmainn'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'With code: FSCREATION',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black54,
                                        fontFamily: 'fontmainn'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Get Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 250,
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bannerr.png'),
                            fit: BoxFit.cover,
                            opacity: 0.7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    "70% off",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'fontmainn',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'On everything today',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontFamily: 'fontmainn'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'With code: FSCREATION',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black54,
                                        fontFamily: 'fontmainn'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Get Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                        fontFamily: 'fontmainn',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Veiw all",
                    style: TextStyle(
                      fontFamily: 'fontmainn',
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BigProduct(
                    imageUrl: 'assets/images/bag.png',
                    name: 'The Marc Jacobs brown bag',
                    subtitle: 'Traveler Tote',
                    price: '\$195.00',
                  ),
                  BigProduct(
                    imageUrl: 'assets/images/bage.png',
                    name: 'Axel Arigato ',
                    subtitle: 'Clean 90 Triple Sneakers',
                    price: '\$245.00',
                  ),
                  BigProduct(
                    imageUrl: 'assets/images/bags.png',
                    name: 'The Marc Jacobs blue bag ',
                    subtitle: 'Traveler Tote',
                    price: '\$195.00',
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                        fontFamily: 'fontmainn',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Veiw all",
                    style: TextStyle(
                      fontFamily: 'fontmainn',
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                TextButton( onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductPage()));
                },
                  child: PopularProductCard(
                      imageUrl: 'assets/images/shoeses.png',
                      name: 'Axel Arigato',
                      description: 'Clean 90 Triole Sneakers',
                      rating: '(4.5)',
                      price: '\$740.00',
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductPagese()));
                },
                  child: PopularProductCard(
                      imageUrl: 'assets/images/shoes.png',
                      name: 'Oxford Shoes for Women',
                      description: 'Leather Work Office',
                      rating: '(3.5)',
                      price: '\$562.00'
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductPages()));
                },
                  child: PopularProductCard(
                      imageUrl: 'assets/images/shoese.png',
                      name: 'Men Leather Shoes',
                      description: 'Leather Work Office',
                      rating: '(4.5)',
                      price: '\$676.00'
                  ),
                ),
              ],

            )

          ],
        ),
      )),
    );
  }

}
