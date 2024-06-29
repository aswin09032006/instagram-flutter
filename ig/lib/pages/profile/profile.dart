import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ig/pages/profile/tabs/posts.dart';
import 'package:ig/pages/profile/tabs/reel.dart';
import 'package:ig/pages/profile/tabs/tagged.dart';
import 'package:ig/util/bubble_stories.dart';

class UserProfile extends StatefulWidget {
  final String unsplashBaseUrl = 'https://source.unsplash.com/random/';

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                '_username_',
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          leading: Icon(Icons.lock),
          actions: [
            Image.asset(
              'assets/images/threads.png',
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.add_box_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.menu,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://source.unsplash.com/random',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '13',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '10M',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '7',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 40),
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/threads.png',
                                    height: 17,
                                  ),
                                  Text('62340471'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2),
                    child: Text(
                      'Warning: My Insta account contains high levels of sarcasm and wit. Proceed with caution. 😏⚠️',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Links here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          'Edit Profile',
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add some space between the buttons
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          'Ad Tools',
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add some space between the buttons
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          'Insights',
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BubbleStories(
                      text: 'story 1',
                      imageUrl: '${widget.unsplashBaseUrl}${1 % 100}',
                    ),
                    BubbleStories(
                      text: 'story 2',
                      imageUrl: '${widget.unsplashBaseUrl}${2 % 100}',
                    ),
                    BubbleStories(
                      text: 'story 3',
                      imageUrl: '${widget.unsplashBaseUrl}${3 % 100}',
                    ),
                    BubbleStories(
                      text: 'story 4',
                      imageUrl: '${widget.unsplashBaseUrl}${4 % 100}',
                    ),
                    BubbleStories(
                      text: 'story 5',
                      imageUrl: '${widget.unsplashBaseUrl}${5 % 100}',
                    ),
                    BubbleStories(
                      text: 'story 6',
                      imageUrl: '${widget.unsplashBaseUrl}${6 % 100}',
                    ),
                    BubbleStories(
                      text: 'story 7',
                      imageUrl: '${widget.unsplashBaseUrl}${7 % 100}',
                    ),
                  ],
                ),
              ),
            ),
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.grid_3x3_outlined)),
                Tab(icon: Icon(Icons.video_call)),
                Tab(icon: Icon(Icons.person_2)),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ProfilePosts(),
                  ReelsPost(),
                  TaggedPosts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
