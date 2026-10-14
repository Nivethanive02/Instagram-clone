import 'dart:async';


import 'package:flutter/material.dart';
import 'package:instagram/screens/dashboard.dart';
import 'package:instagram/screens/login_screen.dart';



class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override


  void initState() {
     Timer(Duration(seconds: 3),()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()
      ),
      );
    }
     );
    super.initState();
    
  }
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Container(
                    height: 200,
                    width: 190,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 216, 29, 167),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://i.pinimg.com/736x/84/89/9a/84899a9d74eddd979fc87bbeac3cb4b1.jpg")
                        ),
                        
                    ),
                    
                   
                   ),
                   
               
                ],
              ),
            ),
    );
  }
}