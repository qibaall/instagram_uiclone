import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_uiclone/widgets/post_card.dart';
import 'package:instagram_uiclone/widgets/storycard.dart';
import 'package:instagram_uiclone/widgets/customhome_appbar.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
          child: Column(children: [
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: StoryCard(),
                    );
                  }),
            ),
            Divider(
              height: 1,
            )
          ]),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return PostCard();
          },
          childCount: 5,
        ))
      ],
    );
  }
}
