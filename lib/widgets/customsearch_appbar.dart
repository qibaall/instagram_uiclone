import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      centerTitle: false,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          height: 38,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200),
          child: TextField(
            cursorColor: Colors.grey.shade500,
            decoration: InputDecoration(
                hintText: "Cari",
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                  color: Colors.grey.shade500,
                )),
          ),
        ),
      ),
    );
  }
}
