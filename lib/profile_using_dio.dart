//TO BE CONTINUED..........................................................

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // ignore: prefer_typing_uninitialized_variables
  var jsonList;
  
  @override 
  void initState() { 
    super.initState();
    userDataRequest(); 
  } 

  final dio = Dio();

  void userDataRequest() async {
    try {
      var response = await dio.get('https://dummyjson.com/users'); 
      if (response.statusCode == 200) { 
        setState(() { 
          jsonList = response.data['users'] as List; 
        }); 
      } else { 
        if (kDebugMode) {
          print(response.statusCode);
        } 
      } 
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (jsonList == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    var user = jsonList[0];
    String imageUrl = user['image']; 
    String firstName = user['firstName']; 
    String lastName = user['lastName']; 
    String userName = user['username'];

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_arrow_left),
        title: Text(userName), 
        backgroundColor: const Color.fromARGB(255, 110, 28, 124),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl), 
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(firstName), 
                const SizedBox(width: 10),
                Text(lastName), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}
