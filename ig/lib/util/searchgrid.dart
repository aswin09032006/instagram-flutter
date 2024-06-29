import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchingGrid extends StatefulWidget {
  const SearchingGrid({super.key});

  @override
  State<SearchingGrid> createState() => _SearchingGridState();
}

class _SearchingGridState extends State<SearchingGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.same,
          pattern: [
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(2, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(2, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              color: Colors.grey,
              child: Image(
                image: NetworkImage(
                  'https://source.unsplash.com/random/200x200?sig=$index',
                ),
                fit: BoxFit.cover,
              ),
            );
          },
          childCount: 100,
        ),
      ),
    );
  }
}
