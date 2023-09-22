import 'package:flutter/material.dart';
import 'package:ofofon_card/home_page.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Textfield for phonenumber
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(hintText: 'Phone number'),
            ),

            // Text field for email
            TextField(
              controller: _emailAddressController,
              decoration: InputDecoration(hintText: 'emailaddress'),
            ),

            SizedBox(height: 30,),

            ElevatedButton(onPressed: () {
              print(_emailAddressController.text);
              print(_phoneNumberController.text);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Homepage(
                        phoneNumber: _phoneNumberController.text,
                      emailAddress: _emailAddressController.text,),),
              );
            },
                child: Text('Save and Exit'),),

          ],
        ),
      ),
    );
  }
}
