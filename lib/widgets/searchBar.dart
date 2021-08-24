import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Search for Products, Brands and New Produts...',
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              width: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Icon(
                Icons.mic,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
