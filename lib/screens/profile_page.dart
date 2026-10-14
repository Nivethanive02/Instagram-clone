
import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget{
  const ProfilePage ({super.key});

  @override
  State<ProfilePage>  createState() => _ProfilepageState();
}
class _ProfilepageState extends State<ProfilePage>{
   int selectedIndex =0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   leading: 
      //   IconButton(
      //     onPressed: (
      //     ){
      //       print("nithesha");
      //     },
      //     icon: Icon(Icons.arrow_back),
      //   ),
      //   title: Text("Nithesha" ,style: TextStyle(fontSize: 20, color: Colors.black),),
      //   actions: [
      //     Icon(Icons.more_horiz),
      //   ],
      // ),
      // body: ListView(
      //   children: [
      //     ListTile(
            // leading: Image(
              
            //   image: NetworkImage
            //   ("https://i.pinimg.com/736x/60/7d/33/607d33b408f95c4f1a9120f71effd3f8.jpg")),
      //       leading: Container(
      //         height: 200,
      //         width: 100,
      //         child: CircleAvatar(
      //           radius: 10,
      //           backgroundImage: NetworkImage
      //           ("https://i.pinimg.com/736x/60/7d/33/607d33b408f95c4f1a9120f71effd3f8.jpg"),
      //         ),
      //       ),
      //       title: Text("10"),
      //       subtitle: Text("posts"),
            
      //     ),
      //   ],
      // ),
    // body: Row(
    //   children: [
    //     ListTile(
    //       leading: CircleAvatar(
    //         backgroundImage: NetworkImage("https://i.pinimg.com/736x/60/7d/33/607d33b408f95c4f1a9120f71effd3f8.jpg"),
    //       ),
    //       title: Text("10", style: TextStyle(fontSize: 20, color: Colors.black),),
    //       subtitle: Text("posts"),
    //     ),
    //   ],
    // ),
body:  ListView(
      children: [
        Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://i.pinimg.com/1200x/d1/42/58/d14258ceee7478d4453b7ea5e8e1bd98.jpg")
                )
              ),
            ),
            SizedBox(width: 30,),
            Column(
            children: [
             SizedBox(width: 30,),
            Text("10",style: TextStyle(fontSize: 20,color: Colors.black ),
            ),
             SizedBox(width: 30,),
            Text("Posts",style: TextStyle(fontSize: 19,color: Colors.black ),
            ),
            ],
            ),
            SizedBox(width: 30,),
            Column(
            children: [
             SizedBox(width: 30,),
            Text("1,500",style: TextStyle(fontSize: 20,color: Colors.black ),
            ),
             SizedBox(width: 30,),
            Text("Followers",style: TextStyle(fontSize: 19,color: Colors.black ),
            ),
            ],
            ),
            SizedBox(width: 30,),
            Column(
            children: [
             SizedBox(width: 30,),
            Text("100",style: TextStyle(fontSize: 20,color: Colors.black ),
            ),
             SizedBox(width: 30,),
            Text("Following",style: TextStyle(fontSize: 19,color: Colors.black ),
            ),
            ],
            ),
          ],
        ),
        SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Cooking slows my chaos💭🔥",style: TextStyle(fontSize: 17,),),
                 SizedBox(height: 4,),
                  Text("Musics Heals Everything 🎵",style: TextStyle(fontSize: 17,),),
                  
              ],
            ),
          ),
          SizedBox(height: 7,),
        Row(
          children: [
            SizedBox(width: 10,),
            Expanded(
              flex: 2,
         child:    ElevatedButton(
              onPressed: (){
                
                print("Edit Profile");
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: Colors.grey[300],
                minimumSize: Size(170,40),
              ),
              child:Text("Edit Profile",
              style: TextStyle(fontSize: 20, color:Colors.black)
              ),
              ),
            ),
              SizedBox(width: 10,),
              Expanded(
                flex: 2,
          child:      ElevatedButton(
              onPressed: (){
                print("insta");
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: Colors.grey[300],
                minimumSize: Size(170,40),
              ),
              child:Text("Share Profile",
              style: TextStyle(fontSize: 20,color: Colors.black),
              ),
              ),
              ),
              
              Expanded(
                flex: 0,
           child:  IconButton(onPressed: (){
                    print("hlo");
            }, 
            
            icon: Icon(Icons.person_add ,)),
              ),
          ],
        ),
        SizedBox(height: 20,),
    //     Row(
    // children: [
    //   ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: 10,
    //     itemBuilder: (context,Index) => Stack(
    
    //     )
    //      ),
    // ],
    //     ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://i.pinimg.com/736x/92/39/9e/92399ea47a37fa82a7a1a1be458bcda4.jpg")
          ),
        ),
      ),
      SizedBox(width: 10,),
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://i.pinimg.com/736x/cd/40/d0/cd40d0c94ae61117bc87b6c736e4c2b0.jpg")
          ),
        ),
      ),
      SizedBox(width: 10,),
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://i.pinimg.com/736x/c8/36/97/c83697052e0b574db17066e5a52333ad.jpg")
          ),
        ),
      ),
      SizedBox(width: 10,),
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage
            ("https://i.pinimg.com/1200x/4a/29/cd/4a29cdb1e99cc43026d3f4705ee857fe.jpg"),
          ),
        ),
      ),
      SizedBox(width: 10,),
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://i.pinimg.com/736x/f4/35/85/f4358576ef07465c85f7038eb2e61582.jpg")
          ),
        ),
      ),
      
        ],
      ),
    ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
                   print("hi");
            }, 
            
          icon: Icon(Icons.grid_on,
          size: 35,
          ),
          
            ),
            SizedBox(width: 30,),
            IconButton(onPressed: (){
                   print("hi");
            }, 
          icon: Icon(Icons.video_library,
          size: 35,
          ),
            ),
            SizedBox(width: 30,),
            IconButton(onPressed: (){
                   print("hi");
            }, 
          icon: Icon(Icons.person_pin,size: 35,),
            ),
            
            // TabBar(
            //   indicatorColor: Colors.black,
            //   tabs: [
            //     Tab(icon: Icon(Icons.grid_on),
                
            //     ),
            //     Tab(icon: Icon(Icons.video_library),
            //     ),
            //     Tab(icon: Icon(Icons.person_pin),
            //     ),
            //     Expanded(
            //       child: TabBarView(children: [
            //         Center(child: Text("Grid Content"),
            //         ),
            //         Center(child: Text("Reels Content"),
            //         ),
            //         Center(child: Text("Tagged Content"),
            //         ),
            //       ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
        Row(
          children: [
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/b9/79/20/b97920336eb4e3a85cc8cceaf2a41520.jpg")
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/52/f7/35/52f7358d4dbb4f27b02b7fdab316bef5.jpg")
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/1200x/55/fe/b2/55feb27955f8f3540085968563eed157.jpg")
            ),
          ),
        ),
      ),
          ],
        ),
         Row(
          children: [
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 140,
        margin: EdgeInsets.only(left: 3),
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/e0/1c/a5/e01ca5565e41a7371b367c5207ba8641.jpg")
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/c5/49/2c/c5492cbdaffb77db78034e668eb523ac.jpg")
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/9f/cc/37/9fcc37e0bf1949d180b651b347a09202.jpg")
            ),
          ),
        ),
      ),
          ],
        ),
         Row(
          children: [
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 140,
     
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/fd/8f/91/fd8f91f7b6980755039db1ae0b4a8b20.jpg")
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/cd/40/d0/cd40d0c94ae61117bc87b6c736e4c2b0.jpg")
            ),
          ),
        ),
      ),
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage
              ("https://i.pinimg.com/736x/31/38/32/313832bcd71b1a5972bd6b5649b54ae5.jpg")
            ),
          ),
        ),
      ),
          ],
        ),
        
          ],
          
        ),
  
  

    );
  }
}