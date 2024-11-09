import 'package:flutter/material.dart';

class BigProduct extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  final String price;

  BigProduct({required this.imageUrl, required this.name, required this.price, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    width: 150,
                    height: 170,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 15,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white, size: 15,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'fontmainn',), ),
            Text(subtitle, style: TextStyle(fontSize: 13, fontFamily: 'fontmainn'),),
            SizedBox(height: 4),
            Text(price, style: TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'fontmainn')),
          ],
        ),
      ),
    );
  }
}