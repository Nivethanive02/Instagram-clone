import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  List<String> images =[
         "https://i.pinimg.com/736x/35/fe/7b/35fe7b745caf224d9a7ca7e84aab169a.jpg",
         "https://i.pinimg.com/webp/736x/7a/21/c2/7a21c28f00698c60907f789f3df2ddce.webp",
         "https://i.ytimg.com/vi/93J3Y-dmP3I/hqdefault.jpg",
         "https://i.pinimg.com/736x/38/c8/82/38c8820e9ec8f636de49a668fff75b4a.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
           if (index >= images.length) {
    return const SizedBox(); // prevent crash
  }
          return Stack(
            children: [
              Container(
                height: 720,
                width: 800,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        images[index],
                      
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      print("nithesha");
                    },
                    icon: Icon(Icons.add, size: 38, color: Colors.white),
                  ),
                  SizedBox(width: 80),
                  Text(
                    "Reels",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 40),
                  Text(
                    "Friends",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Positioned(
                bottom: 160,
                top: 20,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    print("nithesha");
                  },
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
              ),

              Positioned(
                bottom: 150,
                top: 180,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    print("nithesha");
                  },
                  icon: Icon(
                    Icons.comment_outlined,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
              ),

              Positioned(
                bottom: 120,
                top: 300,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    print("nithesha");
                  },
                  icon: Icon(Icons.repeat_one, size: 48, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 100,
                top: 400,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    print("nithesha");
                  },
                  icon: Icon(Icons.send, size: 48, color: Colors.white),
                ),
              ),

              Positioned(
                bottom: 80,
                top: 530,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    print("nithesha");
                  },
                  icon: Icon(
                    Icons.book_outlined,
                    size: 48,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}