import 'package:flutter/material.dart';
import 'package:profile_app1/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:AssetImage('assets/profilepic.png')
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('JESSI MUNEER',
                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Flutter Developer',
                  style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),
                ),
             ),
            Text("  Excellent developers are the lifeblood of software companies.Therefore, organizations and HR teams must think hard about the values that make an individual the best fit for their teams.")
            ],
          ),
        ),
      ),
    );
  }
}

