import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:instagram_uiclone/my_flutter_app_icons.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _iconsize = 30;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () => {onIconTap(2)},
                iconSize: _iconsize,
                icon: Icon(
                  selectedPageIndex == 2 ? Icons.home : Icons.home_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () => {onIconTap(1)},
                iconSize: _iconsize,
                icon: Icon(
                  selectedPageIndex == 1 ? Icons.search : Icons.search_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () => {onIconTap(null)},
                iconSize: _iconsize,
                icon: Icon(
                  selectedPageIndex == 2
                      ? Icons.video_call
                      : Icons.video_call_sharp,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () => {onIconTap(null)},
                iconSize: _iconsize,
                icon: Icon(
                  Icons.local_mall_outlined,
                  color: Colors.black,
                )),
            InkWell(
              onTap: () => {onIconTap(0)},
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/id/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png'),
                radius: _iconsize / 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
