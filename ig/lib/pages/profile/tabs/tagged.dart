import 'package:flutter/material.dart';

class TaggedPosts extends StatefulWidget {
  const TaggedPosts({super.key});

  @override
  State<TaggedPosts> createState() => _TaggedPostsState();
}

class _TaggedPostsState extends State<TaggedPosts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 2,
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
            // color: Colors.deepPurple[100],
          ),
        );
      },
    );
  }
}
