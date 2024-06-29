import 'package:flutter/material.dart';

class ReelsPost extends StatefulWidget {
  const ReelsPost({super.key});

  @override
  State<ReelsPost> createState() => _ReelsPostState();
}

class _ReelsPostState extends State<ReelsPost> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 3, childAspectRatio: 9 / 16),
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
