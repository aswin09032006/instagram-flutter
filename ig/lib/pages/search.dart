import 'package:flutter/material.dart';
import 'package:ig/util/searchgrid.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({super.key});

  @override
  State<UserSearch> createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: _isSearching
            ? ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.grey[400],
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.grey[600],
                        onPressed: () {
                          setState(() {
                            _isSearching = false;
                            _searchController.clear();
                          });
                        },
                      ),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          onSubmitted: (value) {
                            // Handle search logic here
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.clear),
                        color: Colors.grey[600],
                        onPressed: () {
                          _searchController.clear();
                        },
                      ),
                    ],
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    _isSearching = true;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[400],
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
      body: SearchingGrid(),
    );
  }
}
