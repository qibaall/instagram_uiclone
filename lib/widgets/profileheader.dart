import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:instagram_uiclone/widgets/add_storycardprofile.dart';
import 'package:instagram_uiclone/widgets/profilelabel_count.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  bool _isExpansionTileOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AddStoryCardProfile(),
            SizedBox(
              width: 8,
            ),
            ProfileLabelCountWidget(labelText: 'Postingan', count: '3'),
            ProfileLabelCountWidget(labelText: 'Followers', count: '2M'),
            ProfileLabelCountWidget(labelText: 'Followed', count: '1.000'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Lama Lama Makin Lama',
                  style: TextStyle(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Edit Profil',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(Icons.person_add_outlined),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 14),
          child: ExpansionTile(
            onExpansionChanged: (_isOpen) => {
              setState(() {
                _isExpansionTileOpen = _isOpen;
              })
            },
            title: Text(
              'Sorotan',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            subtitle: _isExpansionTileOpen
                ? Text(
                    "Sorotan Anda",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w400),
                  )
                : null,
            trailing: Icon(
              _isExpansionTileOpen
                  ? Icons.expand_less_outlined
                  : Icons.expand_more_outlined,
              color: Colors.grey,
            ),
            children: [
              Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return index != 0
                          ? Container(
                              width: 80,
                              alignment: Alignment.topCenter,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey,
                              ),
                            )
                          : Container(
                              width: 80,
                              child: Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      'Baru',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  )
                                ],
                              ),
                            );
                    }),
              ),
            ],
          ),
        ),
        Divider(
            height: 1,
            color: _isExpansionTileOpen
                ? Colors.transparent
                : Colors.grey.shade400),
      ],
    );
  }
}
