import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> imageUrls = [
    'https://i.pinimg.com/736x/4d/c6/fa/4dc6fa4278ab5ae5d957985b9be540eb.jpg',
    'https://i.pinimg.com/736x/a2/2a/0d/a22a0d649ebdcb569982852a52603776.jpg',
    'https://i.pinimg.com/736x/f4/4d/aa/f44daaffd427668a3c532440a62f6c19.jpg',
    'https://i.pinimg.com/736x/6b/52/6a/6b526abd77989e56df3623c01c6ada09.jpg',
    'https://i.pinimg.com/736x/09/a9/37/09a937f16709880abfcf75800a9a12b0.jpg',
    'https://i.pinimg.com/1200x/d4/9f/36/d49f3627ffe9e0a421a26ee7be2f9475.jpg',
    'https://i.pinimg.com/736x/35/fe/7b/35fe7b745caf224d9a7ca7e84aab169a.jpg',
    'https://i.pinimg.com/736x/f6/32/6c/f6326cab033d6520f6a8cd51facac455.jpg',
    'https://i.pinimg.com/1200x/75/17/5b/75175b44e0de6423e609825a1dc8d0a3.jpg',
    'https://i.pinimg.com/736x/b2/94/fc/b294fc67837619dc893e139de48af146.jpg',
    'https://i.pinimg.com/1200x/64/d5/a0/64d5a06418e0602edbdc03c6d5075063.jpg',
    'https://i.pinimg.com/1200x/e8/35/ed/e835ed89023c2a6d2d1933321d59efc4.jpg',
    'https://i.pinimg.com/1200x/07/0d/b6/070db6d0bb38a35881f36869366285dd.jpg',
    'https://i.pinimg.com/736x/42/34/62/42346254a9aaee8d0934432040f3c04c.jpg',
    'https://i.pinimg.com/1200x/ca/3a/93/ca3a93cd61293f4b667d09337a3570ab.jpg',
    'https://i.pinimg.com/736x/03/4e/53/034e534906c60f34c14e618f8be1b259.jpg',
    'https://i.pinimg.com/webp/736x/16/a0/a7/16a0a735a6e43bd54face7c17f9bfb9f.webp',
    'https://i.pinimg.com/webp/736x/6a/0c/40/6a0c40c74290fea4f8b74e2f4cb02076.webp',
    'https://i.pinimg.com/1200x/92/d0/63/92d0633405c1dddd64fec1238104b1c5.jpg',
    'https://i.pinimg.com/736x/bf/3b/22/bf3b22653efb4bcf54d76ffec4df1fd5.jpg',
    'https://i.pinimg.com/736x/6e/a4/4f/6ea44f2646b81fe5e32e85e7b812aa2d.jpg',
    'https://i.pinimg.com/736x/45/05/c8/4505c874daa7de99943eab623802bd17.jpg',
    'https://i.pinimg.com/736x/c2/9e/d6/c29ed6a58d6923ea8ed6d58c3876f772.jpg',
    'https://i.pinimg.com/736x/de/39/3d/de393d22dba9e05b5cbb73cf6cda2ff8.jpg',
    'https://i.pinimg.com/736x/ff/44/89/ff448958c62c5159b35a044f5ff62c1e.jpg',
    'https://i.pinimg.com/736x/ec/5f/19/ec5f19cbb3ae7194536ad167dee77be2.jpg',
    'https://i.pinimg.com/736x/3c/1a/1e/3c1a1ec989a3c47698ddf6ff0cef672f.jpg',
    'https://i.pinimg.com/736x/c0/91/e3/c091e39eda1e23ea0978de7f44f6ed12.jpg',
    'https://i.pinimg.com/736x/cb/75/b1/cb75b140c0e5f50040cda84890646322.jpg',
    'https://i.pinimg.com/originals/5e/57/07/5e57074adc93371695026ae1ae2434d7.png',
    'https://i.pinimg.com/736x/6d/73/04/6d73040202bba553269c16238e355fca.jpg',
    'https://i.pinimg.com/webp/736x/30/19/38/30193887ae2b6054cbf54d6cfa53d9dc.webp',
    'https://i.pinimg.com/webp/736x/9d/c9/14/9dc9148118e9922afbcb448732a4269b.webp',
    'https://i.pinimg.com/1200x/07/90/1a/07901ae9f02d84cc9b046cd011978045.jpg',
    'https://i.pinimg.com/736x/de/40/fc/de40fcede68af598913a6901649bf9a9.jpg',
    'https://i.pinimg.com/736x/53/4c/13/534c13cc0b37e7c4fcc5620ed30aadc4.jpg',
    'https://i.pinimg.com/webp/1200x/3d/59/d7/3d59d7a9bc10deea0c6ea0778c467208.webp',
    'https://i.pinimg.com/1200x/e7/a7/c4/e7a7c4e6a05a89523d4a586acf32ca60.jpg',
    'https://i.pinimg.com/webp/736x/e5/b8/02/e5b8025ce68578e4d1e576a4892e5a0e.webp',
    'https://i.pinimg.com/736x/86/e8/ba/86e8ba0aa0e9b5ee3dca98b8210fbc01.jpg',
    'https://i.pinimg.com/1200x/6b/e0/cf/6be0cfa363c9437cd79b0ad561d67112.jpg',
    'https://i.pinimg.com/736x/07/d5/d7/07d5d721f5038fb8d0e5258b7f58a1a0.jpg',
    'https://i.pinimg.com/736x/11/bc/ec/11bcec6c9b30fff2bc68948c1a1befa6.jpg',
    'https://i.pinimg.com/1200x/5d/39/9a/5d399a197ab2892adf8fb83e68c8c33a.jpg',
    'https://i.pinimg.com/736x/85/fd/83/85fd83383cb21ed494c4a4304178a4fe.jpg',
    'https://i.pinimg.com/736x/34/eb/09/34eb0907c8a553b3a96ea30340a2a58d.jpg',
    'https://i.pinimg.com/1200x/e5/06/03/e50603ecdafb08a6471862cd87377733.jpg',
    'https://i.pinimg.com/webp/1200x/11/56/e7/1156e76eaf018d78e9764f72d6daa0fe.webp',
    'https://i.pinimg.com/736x/fc/37/bd/fc37bdffece4758c9d88d495210586e7.jpg',
    'https://i.pinimg.com/736x/7c/af/e9/7cafe93e17792d26f12919260b380f2a.jpg',
    'https://i.pinimg.com/736x/10/27/e5/1027e56c0d8bead12083d79230dde5d3.jpg',
  ];

  // Search controller
  final TextEditingController searchController = TextEditingController();
  List<String> filteredImages = [];
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    filteredImages = imageUrls;
    searchController.addListener(_filterImages);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterImages() {
    setState(() {
      isSearching = searchController.text.isNotEmpty;
      if (searchController.text.isEmpty) {
        filteredImages = imageUrls;
      } else {
        filteredImages = imageUrls.where((image) {
          // You can add more sophisticated search logic here
          // For now, we'll just show all images when searching
          return true;
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 244, 240, 247),
                prefixIcon: const Icon(Icons.search),
                labelText: "Search here",
                hintText: "Search for photos, videos, people...",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 208, 106, 181),
                  ),
                ),
                suffixIcon: searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                          setState(() {
                            filteredImages = imageUrls;
                            isSearching = false;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),

          // Search Results or Grid
          Expanded(
            child: filteredImages.isEmpty && isSearching
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "No results found",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(4.0),
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: filteredImages.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print("Image tapped: ${filteredImages[index]}");
                          // Navigate to full-screen view or show details
                        },
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(filteredImages[index]),
                                ),
                              ),
                            ),
                            // Play icon for videos (optional)
                            Positioned(
                              bottom: 8,
                              left: 8,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Text(
                                      "${(index + 1) * 10}K",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Gradient overlay for better text visibility
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.3),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}