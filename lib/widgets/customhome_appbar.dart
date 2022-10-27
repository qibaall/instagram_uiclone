import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      pinned: true,
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () => {},
            icon: Icon(Icons.favorite_border_outlined, color: Colors.black)),
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.send_outlined,
              color: Colors.black,
            )),
      ],
      title: Text(
        "Instagram",
        maxLines: 1,
        style: GoogleFonts.satisfy(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
