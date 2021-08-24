import 'package:flutter/material.dart';

class MenuStripeItem extends StatelessWidget {
  final String? imageUrl;
  final String? itemLabel;

  const MenuStripeItem({Key? key, this.imageUrl, this.itemLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/${imageUrl ?? 'topoffers'}.png'),
              ),
            ),
          ),
          Text(
            itemLabel ?? 'Top Offers',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11.0),
          ),
        ],
      ),
    );
  }
}
