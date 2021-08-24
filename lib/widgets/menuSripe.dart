import 'package:flutter/material.dart';
import 'package:flutter_flipkart/widgets/menuStripeItem.dart';

class MenuStripe extends StatelessWidget {
  const MenuStripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: BoxDecoration(color: Colors.white),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.62,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'All Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          MenuStripeItem(),
          MenuStripeItem(
            imageUrl: 'mobiles',
            itemLabel: 'Mobiles',
          ),
          MenuStripeItem(
            imageUrl: 'electronic',
            itemLabel: 'Electronics',
          ),
          MenuStripeItem(
            imageUrl: 'fashion',
            itemLabel: 'Fashion',
          ),
          MenuStripeItem(
            imageUrl: 'Grocery',
            itemLabel: 'Grocery',
          ),
          MenuStripeItem(
            imageUrl: 'applience',
            itemLabel: 'Appliences',
          ),
        ],
      ),
    );
  }
}
