import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange.shade900,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj'),
              ),
              Text(
                'Aditya Sharma',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white.withOpacity(0.8),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro'),
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.orange.shade900,
                  ),
                  title: Text(
                    '+33 6 95 22 27 06',
                    style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.orange.shade900,
                  ),
                  title: Text(
                    'hugo.courthias@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0, fontFamily: 'Source Sans Pro'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
