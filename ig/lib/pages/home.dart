import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ig/pages/notification.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ig/util/bubble_stories.dart';
import 'package:ig/util/user_post.dart';

class UserHome extends StatefulWidget {
  final String unsplashBaseUrl = 'https://source.unsplash.com/random/';

  final List people = [
    'therock',
    'beyonce',
    'selenagomez',
    'kimkardashian',
    'justinbieber',
    'kyliejenner',
    'leomessi',
    'cristiano',
    'arianagrande',
    'taylorswift',
    'katyperry',
    'neymarjr',
    'nickiminaj',
    'khloekardashian',
    'shakira',
    'davidbeckham',
    'mileycyrus',
    'jlo',
    'kendalljenner',
    'zacefron',
    'iamcardib',
    'priyankachopra',
    'kevinhart4real',
    'ronaldo',
    'vindiesel',
    'theresa_may',
    'elizabethhurley1',
    'iamhalsey',
    'johnnydepp',
    'harrystyles',
    'jenniferaniston',
    'bradpitt',
    'jimcarrey',
    'gwenstefani',
    'gal_gadot',
    'jasonstatham',
    'realdonaldtrump',
    'taylormomsen',
    'chrishemsworth',
    'margotrobbie',
    'jessicaalba',
    'bhadbhabie',
    'haileybieber',
    'shawnmendes',
    'zendaya',
    'barackobama',
    'lelepons',
    'jamescharles',
    'theellenshow',
    'tyrabanks',
  ];

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  _launchUserProfile(String username) async {
    final url = 'https://www.instagram.com/$username/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.camera_alt_outlined),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black, fontFamily: 'Billabong'),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()),
                      );
                    },
                    child: Icon(Icons.favorite_outline),
                  ),
                ),
                Image(
                  image: AssetImage('assets/images/messenger.png'),
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: widget.people.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: widget.people[index],
                    imageUrl: '${widget.unsplashBaseUrl}${index % 100}',
                  );
                },
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                _launchUserProfile(widget.people[index - 1]);
              },
              child: UserPosts(
                name: widget.people[index - 1],
                imageUrl: '${widget.unsplashBaseUrl}${index % 100}',
              ),
            );
          }
        },
      ),
    );
  }
}
