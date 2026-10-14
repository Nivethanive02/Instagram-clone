import 'package:flutter/material.dart';
import 'package:instagram/providers/post_provider.dart';
import 'package:instagram/screens/Message_page.dart';
import 'package:instagram/screens/add_post_page.dart';
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/screens/profile_page.dart';
import 'package:instagram/screens/reels_page.dart';
import 'package:instagram/screens/search_page.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget{
  const Dashboard ({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}
 class _DashboardState extends State<Dashboard>{
  int selectedIndex =0;
  List <Widget> screens =[//idhula podra page mattum dha open agum
          HomePage(),
          SearchPage(),
          ReelsPage(), 
          AddPostPage(),
          ProfilePage(),
          MessagePage(),
  ];
  @override

  void initState() {//State class la already initState() method irukum.Screen open aana udane initState run aagum
  Provider.of<PostProvider>(context, listen: false).getAllPosts();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
      title: selectedIndex == 0 ? Text("Instagram") : null,
      actions: [
        if (selectedIndex == 0)
        IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddPostPage()));
          }, 
          icon: Icon(Icons.add),
          ),
         IconButton(
          onPressed: () {
          showBottomSheet(context: context, builder: (context){
            return Container(
              height: 500,
              child: Center(child: Text("Favorites"),),
            );
          },
          );
         }, icon: Icon(Icons.favorite_border),),
         if (selectedIndex == 1  || selectedIndex == 2 || selectedIndex == 3 )
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
      ],
     ),
     body: screens[selectedIndex],
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_outlined),label: "Reels"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
        BottomNavigationBarItem(
          icon: Icon
        (Icons.account_circle_outlined),
        label: "Profile"
        ),
      ],
     ),
    );
  }
 }