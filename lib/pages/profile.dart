import 'package:flutter/material.dart';
import 'package:instagram/widget/tab_item.dart';
import '../widget/highlight.dart';
import '../widget/profilepic.dart';
import '../widget/info_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "m.fayhad",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePic(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoitem("Post", "313"),
                      infoitem("Post", "666"),
                      infoitem("Post", "666"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "m.fayhad",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lo",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: " #flutter",
                      style: TextStyle(color: Colors.blue),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link goes here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  highlight(title: "Highlight 1"),
                  highlight(title: "Highlight 2"),
                  highlight(title: "Highlight 3"),
                  highlight(title: "Highlight 4"),
                  highlight(title: "Highlight 5"),
                  highlight(title: "Highlight 6"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false)
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemCount: 313,
            itemBuilder: (BuildContext context, int index) => Image.network(
              "https://picsum.photos/536/374",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
