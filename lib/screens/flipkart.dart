import 'package:flutter/material.dart';
import 'package:flutter_flipkart/widgets/bottomSheetContainer.dart';
import 'package:flutter_flipkart/widgets/itemCard.dart';
import 'package:flutter_flipkart/widgets/menuSripe.dart';
import 'package:flutter_flipkart/widgets/offerSlider.dart';
import 'package:flutter_flipkart/widgets/searchBar.dart';

class FlipKart extends StatefulWidget {
  const FlipKart({Key? key}) : super(key: key);

  @override
  _FlipKartState createState() => _FlipKartState();
}

class _FlipKartState extends State<FlipKart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Container(
          height: 50.0,
          width: 100.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/flipkart-plus_8d85f4.png'),
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      bottomSheet: BottomSheetContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 5.0,
            ),
            MenuStripe(),
            OfferSlider(),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  ItemCard(),
                  ItemCard(
                    imageUrl: 'assets/images/electronic.png',
                    offer: 'Min. 60% off',
                  ),
                  ItemCard(
                    imageUrl: 'assets/images/mobiles.png',
                    offer: 'Min. 30% off',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
