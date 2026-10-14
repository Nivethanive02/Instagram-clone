import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
   List<Map<String,String>> Users =[
    {
    "name":"Nithesha",
    "image" :"https://i.pinimg.com/1200x/d1/42/58/d14258ceee7478d4453b7ea5e8e1bd98.jpg",
    "note": "Busy",
    },
     {
    "name":"Gayathri",
    "image" :"https://i.pinimg.com/736x/aa/e2/92/aae2926addc0afe682609099618a64f9.jpg",
    "note": "Musics",
    },
     {
    "name":"Harshini",
    "image" :"https://i.pinimg.com/736x/e8/b3/da/e8b3da879a3eae990f8404cc94bf86c5.jpg",
    "note": "Movie",
    },
     {
    "name":"Nivetha",
    "image" :"https://i.pinimg.com/736x/a2/2a/0d/a22a0d649ebdcb569982852a52603776.jpg",
    "note": "Let The Moment Linger",
    },
     {
    "name":"Divya",
    "image" :"https://i.pinimg.com/736x/61/9a/60/619a6070f1905daf28b32103b2dd5348.jpg",
    "note": "At Work",
    },
     {
    "name":"Jai Sri",
    "image" :"https://i.pinimg.com/736x/27/f5/b6/27f5b65a99d75db5df9af9e8fea1a34e.jpg",
    "note": "Travel",
    },
     {
    "name":"Selvi",
    "image" :"https://i.pinimg.com/736x/b9/79/20/b97920336eb4e3a85cc8cceaf2a41520.jpg",
    "note": "Cooking Time",
    },
     {
    "name":"Anitha",
    "image" :"https://i.pinimg.com/736x/4e/47/c0/4e47c04ce7cc85c2ef7c308df0d1eac9.jpg",
    "note": "Busy",
    },
     {
    "name":"Mani Megalai",
    "image" :"https://i.pinimg.com/736x/92/03/86/920386338225079e639ff7825cd4378d.jpg",
    "note": "Busy",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                   body: ListView(
                    children: [
                     Column(
                     
                         children: [
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                            decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 215, 214, 217),
                            prefixIcon:Icon(Icons.search),   
                                       label: Text("Search here"),
                            
                            focusedBorder: OutlineInputBorder(
                              
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black),
                              
                            ),
                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(color: const Color.fromARGB(255, 95, 53, 70))
                            )
                                                  ),
                                                ),
                          ),
                                 SizedBox(
                                   child: Container(
                                     height: 160,
                                     child: ListView.builder(//story oda listview
                                       scrollDirection: Axis.horizontal,//common ah column la erukum so row kaga horizontal
                                       shrinkWrap: true,
                           
                                       itemCount: Users.length,//indha count oda ah container mattum dha varum
                                       itemBuilder: (context, index) => Stack(//stack for mela mela varum
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                 height: 110,
                                 width: 110,
                                 margin: EdgeInsets.all(1.0),
                                 decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                 
                                 ),
                                 child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    margin: EdgeInsets.all(1),
                                
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color.fromARGB(255, 203, 54, 244),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        Users[index]['image']!,
                                        ),
                                        fit: BoxFit.cover,
                                    ),
                                  ),
                                 ),
                                ),
                                ),
                              ),
                            //  Positioned(
                            //   top: 0,
                            //   child: Container(
                            //     padding: EdgeInsets.symmetric(horizontal: 6 , vertical: 2),
                            //     decoration: BoxDecoration(
                            //       color: Colors.black,
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     child: Text(Users[index]['note']! , style: TextStyle(color: Colors.white, fontSize: 10),),
                            //   ),
                            //  ),
                              Text(Users[index]['name']!, style: TextStyle(fontSize: 15, color: Colors.black),),
                            ],
                          ),
                        ),
                        
                        
                        
                      ],
                                       ),
                                       ),
                                   ),
                                 ),
                                 SizedBox(height: 0,),
                                 Padding(
                                   padding: const EdgeInsets.all(6.0),
                                   child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text("Message", style: TextStyle(fontSize: 20, color: Colors.black),),
                                      Text("Request", style: TextStyle(fontSize: 20, color: Colors.black),)
                                   ],
                                   
                                   ),
                                 ),
                                 SizedBox(height: 9,),
                               
                                 ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 230,
                                       width: 150,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/a2/2a/0d/a22a0d649ebdcb569982852a52603776.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Nivetha" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Whats Up?", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/61/9a/60/619a6070f1905daf28b32103b2dd5348.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Divya Dharshini" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("How is your Day", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                  ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/b9/79/20/b97920336eb4e3a85cc8cceaf2a41520.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Selvi" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Do you like icecream ? ", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/e8/b3/da/e8b3da879a3eae990f8404cc94bf86c5.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Harshini" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Looking Beautiful in the Picture", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/a6/27/93/a62793e71f5376ec983058d09eb04415.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Gayathri" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Dirty Girl ", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/92/03/86/920386338225079e639ff7825cd4378d.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Mani Megalai" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("What are you doing", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/4e/47/c0/4e47c04ce7cc85c2ef7c308df0d1eac9.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Anitha" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Are you Okay now ? ", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/27/f5/b6/27f5b65a99d75db5df9af9e8fea1a34e.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Jai Sri" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Hi Dear", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/fb/62/57/fb6257b97649e9c5aedd58b8de26638d.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Sneha" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Take care of Yourself", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/06/bd/6d/06bd6d0ca2004bffb391a1e85798a736.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Priya" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Had Your Breakfast", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/94/8e/82/948e82196448e22a5925f28c94fa60ab.jpg")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Vinitha" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Happy Birthday ! ", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                                   ListTile(
                                   
                                   leading: CircleAvatar(
                                     
                                     child: Container(
                                       
                                       height: 200,
                                       width: 120,
                                       decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/webp/1200x/55/fe/b2/55feb27955f8f3540085968563eed157.webp")
                        ),
                                       ),
                                     ),
                                   ),
                                   title: Text("Samantha" , style: TextStyle(fontSize: 17,color: Colors.black),),
                                   subtitle: Text("Whats Up?", style: TextStyle(fontSize: 15,color: Colors.black),),
                                   isThreeLine: true,
                                   trailing: Icon(Icons.camera_alt_outlined ,color: Colors.black, size: 29,),
                                   selectedColor: Colors.grey,
                                   onTap: () {
                                     
                                   },
                                   
                                   
                                 ),
                     
                         ],
                      ),
                    ],
                   ),
                   );
    
  }
}
  // User data for stories
  // final List<Map<String, String>> users = [
  //   {"name": "Nithesha", "image": "https://i.pinimg.com/1200x/d1/42/58/d14258ceee7478d4453b7ea5e8e1bd98.jpg", "note": "Busy"},
  //   {"name": "Gayathri", "image": "https://i.pinimg.com/736x/aa/e2/92/aae2926addc0afe682609099618a64f9.jpg", "note": "Musics"},
  //   {"name": "Harshini", "image": "https://i.pinimg.com/736x/e8/b3/da/e8b3da879a3eae990f8404cc94bf86c5.jpg", "note": "Movie"},
  //   {"name": "Nivetha", "image": "https://i.pinimg.com/736x/a2/2a/0d/a22a0d649ebdcb569982852a52603776.jpg", "note": "Let The Moment Linger"},
  //   {"name": "Divya", "image": "https://i.pinimg.com/736x/61/9a/60/619a6070f1905daf28b32103b2dd5348.jpg", "note": "At Work"},
  //   {"name": "Jai Sri", "image": "https://i.pinimg.com/736x/27/f5/b6/27f5b65a99d75db5df9af9e8fea1a34e.jpg", "note": "Travel"},
  //   {"name": "Selvi", "image": "https://i.pinimg.com/736x/b9/79/20/b97920336eb4e3a85cc8cceaf2a41520.jpg", "note": "Cooking Time"},
  //   {"name": "Anitha", "image": "https://i.pinimg.com/736x/4e/47/c0/4e47c04ce7cc85c2ef7c308df0d1eac9.jpg", "note": "Busy"},
  //   {"name": "Mani Megalai", "image": "https://i.pinimg.com/736x/92/03/86/920386338225079e639ff7825cd4378d.jpg", "note": "Busy"},
  // ];

  // // Chat data (from your ListTile hardcoded values)
  // final List<Map<String, String>> chats = [
  //   {"name": "Nivetha", "image": "https://i.pinimg.com/736x/a2/2a/0d/a22a0d649ebdcb569982852a52603776.jpg", "message": "Whats Up?"},
  //   {"name": "Divya Dharshini", "image": "https://i.pinimg.com/736x/61/9a/60/619a6070f1905daf28b32103b2dd5348.jpg", "message": "How is your Day"},
  //   {"name": "Selvi", "image": "https://i.pinimg.com/736x/b9/79/20/b97920336eb4e3a85cc8cceaf2a41520.jpg", "message": "Do you like icecream ?"},
  //   {"name": "Harshini", "image": "https://i.pinimg.com/736x/e8/b3/da/e8b3da879a3eae990f8404cc94bf86c5.jpg", "message": "Looking Beautiful in the Picture"},
  //   {"name": "Gayathri", "image": "https://i.pinimg.com/736x/a6/27/93/a62793e71f5376ec983058d09eb04415.jpg", "message": "Dirty Girl"},
  //   {"name": "Mani Megalai", "image": "https://i.pinimg.com/736x/92/03/86/920386338225079e639ff7825cd4378d.jpg", "message": "What are you doing"},
  //   {"name": "Anitha", "image": "https://i.pinimg.com/736x/4e/47/c0/4e47c04ce7cc85c2ef7c308df0d1eac9.jpg", "message": "Are you Okay now ?"},
  //   {"name": "Jai Sri", "image": "https://i.pinimg.com/736x/27/f5/b6/27f5b65a99d75db5df9af9e8fea1a34e.jpg", "message": "Hi Dear"},
  //   {"name": "Sneha", "image": "https://i.pinimg.com/736x/fb/62/57/fb6257b97649e9c5aedd58b8de26638d.jpg", "message": "Take care of Yourself"},
  //   {"name": "Priya", "image": "https://i.pinimg.com/736x/06/bd/6d/06bd6d0ca2004bffb391a1e85798a736.jpg", "message": "Had Your Breakfast"},
  //   {"name": "Vinitha", "image": "https://i.pinimg.com/736x/94/8e/82/948e82196448e22a5925f28c94fa60ab.jpg", "message": "Happy Birthday !"},
  //   {"name": "Samantha", "image": "https://i.pinimg.com/webp/1200x/55/fe/b2/55feb27955f8f3540085968563eed157.webp", "message": "Whats Up?"},
  // ];

  // // Search controller
  // final TextEditingController _searchController = TextEditingController();
  // List<Map<String, String>> _filteredChats = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _filteredChats = List.from(chats);
  //   _searchController.addListener(_filterChats);
  // }

  // void _filterChats() {
  //   setState(() {
  //     final query = _searchController.text.toLowerCase();
  //     if (query.isEmpty) {
  //       _filteredChats = List.from(chats);
  //     } else {
  //       _filteredChats = chats.where((chat) {
  //         return chat['name']!.toLowerCase().contains(query) ||
  //             chat['message']!.toLowerCase().contains(query);
  //       }).toList();
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   _searchController.dispose();
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Column(
  //       children: [
  //         // Search Bar
  //         Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: TextFormField(
  //             controller: _searchController,
  //             decoration: InputDecoration(
  //               filled: true,
  //               fillColor: const Color.fromARGB(255, 215, 214, 217),
  //               prefixIcon: const Icon(Icons.search),
  //               labelText: "Search here",
  //               focusedBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.circular(20),
  //                 borderSide: const BorderSide(color: Colors.black),
  //               ),
  //               enabledBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.circular(20),
  //                 borderSide: const BorderSide(
  //                   color: Color.fromARGB(255, 95, 53, 70),
  //                 ),
  //               ),
  //               suffixIcon: _searchController.text.isNotEmpty
  //                   ? IconButton(
  //                       icon: const Icon(Icons.clear),
  //                       onPressed: () {
  //                         _searchController.clear();
  //                         setState(() {
  //                           _filteredChats = List.from(chats);
  //                         });
  //                       },
  //                     )
  //                   : null,
  //             ),
  //           ),
  //         ),

  //         // Story Section - Horizontal ListView
  //         SizedBox(
  //           height: 140,
  //           child: ListView.builder(
  //             scrollDirection: Axis.horizontal,
  //             padding: const EdgeInsets.symmetric(horizontal: 8),
  //             itemCount: users.length,
  //             itemBuilder: (context, index) {
  //               return Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 4.0),
  //                 child: Column(
  //                   children: [
  //                     Container(
  //                       height: 90,
  //                       width: 90,
  //                       decoration: BoxDecoration(
  //                         shape: BoxShape.circle,
  //                         gradient: const LinearGradient(
  //                           colors: [Colors.purple, Colors.orange],
  //                           begin: Alignment.topLeft,
  //                           end: Alignment.bottomRight,
  //                         ),
  //                         border: Border.all(color: Colors.white, width: 3),
  //                       ),
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(3.0),
  //                         child: CircleAvatar(
  //                           backgroundImage: NetworkImage(users[index]['image']!),
  //                         ),
  //                       ),
  //                     ),
  //                     const SizedBox(height: 4),
  //                     Text(
  //                       users[index]['name']!,
  //                       style: const TextStyle(fontSize: 12, color: Colors.black),
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   ],
  //                 ),
  //               );
  //             },
  //           ),
  //         ),

  //         // Message Header
  //         Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               const Text(
  //                 "Message",
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //               ),
  //               Text(
  //                 "Request",
  //                 style: TextStyle(fontSize: 20, color: Colors.grey[600]),
  //               ),
  //             ],
  //           ),
  //         ),

  //         // Chat List - Dynamic with search filter
  //         Expanded(
  //           child: _filteredChats.isEmpty
  //               ? const Center(
  //                   child: Text(
  //                     "No chats found",
  //                     style: TextStyle(fontSize: 16, color: Colors.grey),
  //                   ),
  //                 )
  //               : ListView.builder(
  //                   itemCount: _filteredChats.length,
  //                   itemBuilder: (context, index) {
  //                     final chat = _filteredChats[index];
  //                     return ListTile(
  //                       leading: CircleAvatar(
  //                         radius: 28,
  //                         backgroundImage: NetworkImage(chat['image']!),
  //                       ),
  //                       title: Text(
  //                         chat['name']!,
  //                         style: const TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.w500,
  //                         ),
  //                       ),
  //                       subtitle: Text(
  //                         chat['message']!,
  //                         style: const TextStyle(fontSize: 15, color: Colors.black54),
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                       trailing: const Icon(
  //                         Icons.camera_alt_outlined,
  //                         color: Colors.black,
  //                         size: 28,
  //                       ),
  //                       onTap: () {
  //                         print("Open chat with ${chat['name']}");
  //                       },
  //                     );
  //                   },
  //                 ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
