import 'package:flutter/material.dart';
import 'package:instagram_uiclone/widgets/customprofile_appbar.dart';
import 'package:instagram_uiclone/widgets/persistent_header.dart';
import 'package:instagram_uiclone/widgets/profileheader.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder: (context, index) {
              return [
                CustomProfileAppBar(),
                SliverToBoxAdapter(
                  child: Container(color: Colors.white, child: ProfileHeader()),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: PersistentHeader(
                      child: TabBar(
                          indicatorWeight: 1,
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              icon: Icon(Icons.grid_on),
                            ),
                            Tab(
                              icon: Icon(Icons.assignment_ind_outlined),
                            )
                          ]),
                      mXExtent: 50,
                      mnExtent: 50),
                )
              ];
            },
            body: TabBarView(
              children: [
                CustomScrollView(
                  physics: ClampingScrollPhysics(),
                  slivers: [
                    SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://res.klook.com/image/upload/c_fill,w_750,h_560,f_auto/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/lsdlq88x3sk5belpgvof.jpg'))),
                          );
                        }),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                        ))
                  ],
                )
              ],
            )));
  }
}
