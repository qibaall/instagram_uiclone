import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:instagram_uiclone/my_flutter_app_icons.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Arsenal",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("London, England"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/id/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png'),
            ),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
          Image.network(
            'https://akcdn.detik.net.id/community/media/visual/2022/10/25/arsenal_169.jpeg?w=700&q=90',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.favorite_sharp,
                  color: Colors.red,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.chat_bubble_outline_rounded),
                iconSize: 28,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.send_outlined),
                iconSize: 30,
              ),
              Spacer(),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.bookmark_outline),
                iconSize: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  '1M Likes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 11, top: 4),
            child: Row(
              children: [
                Text(
                  'Arsenal',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 3)),
                Text('Pucuk Dingin Bos')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 10),
            child: Row(
              children: [
                Text(
                  '8 MENIT YANG LALU',
                  style: TextStyle(fontSize: 8, color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
