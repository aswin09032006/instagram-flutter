import 'package:flutter/material.dart';

class ProfilePosts extends StatefulWidget {
  const ProfilePosts({super.key});

  @override
  State<ProfilePosts> createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 13,
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
