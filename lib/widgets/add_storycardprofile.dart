import 'package:flutter/material.dart';

class AddStoryCardProfile extends StatelessWidget {
  const AddStoryCardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 32,
                  backgroundImage: NetworkImage(
                      'https://play-lh.googleusercontent.com/JZLQjEK7vKSzJ9PX1kVqgWOT0-FrUiWSQmsQl9XtmShNyxDDLtOHCInWtnXLDA19T1c'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
