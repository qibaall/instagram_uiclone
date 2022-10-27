import 'package:flutter/material.dart';

class ProfileLabelCountWidget extends StatelessWidget {
  const ProfileLabelCountWidget(
      {Key? key, required this.labelText, required this.count})
      : super(key: key);
  final String labelText;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              labelText,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
