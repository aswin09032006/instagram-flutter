import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Image(
              image: NetworkImage(
                'https://source.unsplash.com/random/${index % 100}',
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
