import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:instagram_uiclone/my_flutter_app_icons.dart';

class SearchAccount extends StatelessWidget {
  const SearchAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Arsenal",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Arsenal Official Account"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/id/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png'),
            ),
            trailing: Text(
              'x',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
