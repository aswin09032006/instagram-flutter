import 'package:flutter/material.dart';
import 'dart:math';

class UserPosts extends StatelessWidget {
  final String name;
  final String imageUrl;

  UserPosts({required this.name, required this.imageUrl});

  final List<String> comments = [
    "Your posts always brighten up my day! Thank you!",
    "Wow, this is amazing!",
    "Beautiful shot!",
    "Incredible work!",
    "I love your creativity!",
    "You're so talented!",
    "This is stunning!",
    "Amazing content as always!",
    "You're an inspiration!",
    "I can't get enough of your feed!",
    "You're a true artist!",
    "This made my day!",
    "Speechless 😍",
    "Absolutely mesmerizing!",
    "So dreamy!",
    "Can't stop staring at this!",
  ];

  String getRandomComment() {
    final random = Random();
    return comments[random.nextInt(comments.length)];
  }

  @override
  Widget build(BuildContext context) {
    final randomComment = getRandomComment();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://source.unsplash.com/random/40x40?sig=${name.hashCode}',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.error),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          // height: 300,
          child: imageUrl != null
              ? ClipRRect(
                  // borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    // height: 300,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[200],
                      child: Icon(Icons.error),
                    ),
                  ),
                )
              : Container(
                  height: 300,
                  color: Colors.grey[200],
                ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.send),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'michigo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: '  $randomComment',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: .5,
        ),
      ],
    );
  }
}
