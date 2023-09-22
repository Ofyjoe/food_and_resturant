import 'package:flutter/material.dart';

import 'messages.dart';

class Homepage extends StatelessWidget {
  String phoneNumber;
  String emailAddress;

 Homepage({
    this.phoneNumber = '07081966139',
    this.emailAddress = 'example@email.com',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //picture
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              child: Image.network(
                  'https://cdn0.iconfinder.com/data/icons/users-android-l-lollipop-icon-pack/24/user-512.png'),
            ),

            // Text(name)
            const Text(
              'Ofofon',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Text (Job description)
            const Text(
              'MOBILE DEVELOPER',
              style: TextStyle(color: Colors.white,
                  letterSpacing: 2.0),
            ),

            // For Line
            const SizedBox(height: 20,),

            // To centralize the whole container and separate line
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 150),
              color: Colors.white,
              height: 0.9,
              width: 50,
            ),

            const SizedBox(height: 30,),

            // For first Container with row
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.call,
                    color: Colors.black54,),

                  SizedBox(width: 90,),

                  Text('phoneNumber',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),)

                ],
              ),
            ),

            const SizedBox(height: 30,),
            // For second container with row
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(Icons.email,
                    color: Colors.black54,),

                  SizedBox(width: 90,),

                  Text('emailAddress',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),),

                ],
              ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Messages())
                  );
                },
                child: Text('Go to next screen'))
          ],

        ),
      ),
    );
  }
}