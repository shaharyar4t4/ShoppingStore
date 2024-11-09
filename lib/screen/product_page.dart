import 'package:flutter/material.dart';
import 'package:shoesstore/constant/colorss.dart';
import 'package:shoesstore/screen/dashbored.dart';
import 'package:shoesstore/screen/nabbar.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int selectedSize = 41;
  int quantity = 1;
  List<int> sizes = [38, 39, 40, 41, 42];
  Color selectedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 80.0), // Add padding to avoid being covered by the fixed row
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 20,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Nabbar()));
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_bag_outlined),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 350,
                              height: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sneker.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Icon(Icons.favorite_border)],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 350,
                              height: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/show.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Icon(Icons.favorite_border)],
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 350,
                              height: 350,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/showe.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [Icon(Icons.favorite_border)],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Axel Arigato',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'fontmainn',
                      ),
                    ),
                    Text(
                      'Clean 90 Triple Sneakers',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontFamily: 'fontmainn',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Text('4.5 (270 Reviews)'),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                        ),
                        Text(quantity.toString()),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                    Text(
                      'Available in stock',
                      style: TextStyle(color: Colors.green, fontFamily: 'fontmainn'),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Size",
                      style: TextStyle(
                        fontFamily: 'fontmainn',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        Wrap(
                          spacing: 6.0,
                          children: sizes.map((size) {
                            return ChoiceChip(
                              label: Text(size.toString()),
                              selected: selectedSize == size,
                              onSelected: (selected) {
                                setState(() {
                                  selectedSize = size;
                                });
                              },
                            );
                          }).toList(),
                        ),
                        SizedBox(width: 10),
                        Column(
                          // Row starts
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedColor = Colors.blue;
                                });
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                  border: selectedColor == Colors.blue
                                      ? Border.all(color: Colors.black, width: 2)
                                      : null,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.0),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedColor = Colors.black;
                                });
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  border: selectedColor == Colors.black
                                      ? Border.all(color: Colors.black, width: 2)
                                      : null,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.0),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedColor = Colors.red;
                                });
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  border: selectedColor == Colors.red
                                      ? Border.all(color: Colors.black, width: 2)
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: 'fontmainn',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Engineered to crush any movement-based workout, these sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair.',
                      style: TextStyle(color: Colors.grey, fontFamily: 'fontmainn'),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(

                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$740.00',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
