import 'package:crewbella/profile_model.dart';
import 'package:crewbella/profile_page.dart';
import 'package:crewbella/services.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? username;
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade50, Colors.white]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Crewbella',
                textAlign: TextAlign.center,
                style: crewTextStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Enter the username to display profile",
                textAlign: TextAlign.center,
                style: crewTextStyle.copyWith(color: Colors.pink),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              child: TextFormField(
                onChanged: (value) {
                  username = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                        borderRadius: BorderRadius.circular(2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 95),
              child: OutlinedButton(
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.pink))),
                  onPressed: ()async {
              Profile profile=    await  fetchProfile(username);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Text(
                    "Show",
                    style: crewTextStyle.copyWith(
                        color: Colors.pink, fontSize: 23),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
