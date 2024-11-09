import 'package:flutter/material.dart';

class PopularProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String rating;
  final String price;

  PopularProductCard(
      {required this.imageUrl,
      required this.name,
      required this.description,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.all(10.0),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 7,
            offset: Offset(0, 4.0),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
              height: 60,
              width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black , fontFamily: 'fontmainn')),
                Text(description, style: TextStyle(color: Colors.grey, fontFamily: 'fontmainn')),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text(rating, style: TextStyle(color: Colors.black , fontFamily: 'fontmainn'),),
                  ],
                ),
              ],
            ),
          ),
          Text(price, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black , fontFamily: 'fontmainn')),
        ],
      ),
    );
  }
}
