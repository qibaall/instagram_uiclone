import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_uiclone/widgets/customsearch_appbar.dart';
import 'package:instagram_uiclone/widgets/post_card.dart';
import 'package:instagram_uiclone/widgets/search_account.dart';
import 'package:instagram_uiclone/widgets/storycard.dart';
import 'package:instagram_uiclone/widgets/customhome_appbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSearchBar(),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (
            context,
            index,
          ) {
            return SearchAccount();
          },
          childCount: 10,
        ))
      ],
    );
  }
}
