import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/models/item_model.dart';
import 'package:realstate/widgets/search_field.dart';
import 'package:realstate/widgets/suggestion_list.dart';

import '../widgets/select_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Row(
          children: [
            Icon(
              Icons.home,
              color: Colors.blue.shade500,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "RealState",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active,
                color: Colors.grey.shade600,
              ),),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            children:  [
              const SearchField(),
              const SelectCategory(),
              SuggestionList(title: "Recommendation for you",items: Item.recommended),
              const SizedBox(height: 10,),
              SuggestionList(title: "Suggestion for you",items: Item.suggestion),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade500,
        unselectedItemColor: Colors.grey.shade600,
        items: const [
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.search),label: "Search"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.heart),label: "Favorites"),
          BottomNavigationBarItem(icon:Icon(Icons.message),label: "Message"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.person),label: "Profile"),
        ],
      ),
    );
  }
}
