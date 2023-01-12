import 'package:flutter/material.dart';
import 'package:profile_app1/Screens/Profile_page.dart';
void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
class home  extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signin'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:AssetImage('assets/programer.png'),
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
              SizedBox(
                height: 50,
                width: 50,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                color: Colors.purple,
                child: ListTile(
                  leading:Icon(Icons.email,
                    color: Colors.black,
                  ),
                  title: Text('Email'),
                ),
              ),
              Card(
                color: Colors.purple,
                child: ListTile(
                  leading:Icon(Icons.password,
                    color: Colors.black,
                  ),
                  title: Text('password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                  child: Center(child: Text('SIGN IN')),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF4A148C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      maximumSize: Size(double.infinity,50)
                  ),
                ),
              ),
            ]
        ),
      ),
    )
    ;
  }
}

