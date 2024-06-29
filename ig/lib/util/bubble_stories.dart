import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String imageUrl;
  final bool isFirst;

  BubbleStories(
      {required this.text, required this.imageUrl, this.isFirst = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: isFirst
                  ? null
                  : Border.all(
                      width: 3, // Adjust the width of the border as needed
                      color: Colors.transparent,
                    ),
              gradient: isFirst
                  ? null
                  : LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.purple,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
            ),
            child: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: imageUrl != null
                    ? DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      )
                    : null,
                color: Colors.grey[400],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 8),
          ),
        ],
      ),
    );
  }
}
