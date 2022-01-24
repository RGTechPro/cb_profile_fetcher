import 'package:crewbella/constant.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        shadowColor: Colors.white,
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 35, top: 15),
            child: TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  Image.asset(
                    'images/ping.png',
                  ),
                  Text(
                    "PINGS",
                    style: crewTextStyle.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
          )
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.white,
        title: Text(
          "name",
          style: crewTextStyle.copyWith(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5),
              child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 125,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(125),
                    child: Image.network(
                      'https://crewbella.s3.ap-south-1.amazonaws.com/img/profiles/image/2_082f840a25435f461c0cd48ba63f410a8954077c4fc7bbd9a51448.jpg',
                      height: 243,
                      width: 243,
                      fit: BoxFit.fitWidth,
                    ),
                  )),
            ),
            Center(
              child: Text(
                'Chirag Balani',
                style: crewTextStyle.copyWith(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '@chiragbalani',
                    style: crewTextStyle.copyWith(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        'Jaipur',
                        style: crewTextStyle.copyWith(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '9 ',
                        style: crewTextStyle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'followers',
                        style: crewTextStyle.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '9 ',
                        style: crewTextStyle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'quickbooks',
                        style: crewTextStyle.copyWith(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {},
                child: Text('See Quickbook',
                    style: crewTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
              child: ExpandablePanel(
                theme: ExpandableThemeData(
                    hasIcon: false,
                    useInkWell: true,
                    inkWellBorderRadius: BorderRadius.circular(10)),
                header: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Know more',
                        style: crewTextStyle.copyWith(color: Colors.grey),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                collapsed: SizedBox(
                  height: 0,
                ),
                expanded: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today),
                            Text(
                              "  Joined:   ",
                              style: crewTextStyle,
                            ),
                            Text(
                              '76699',
                              style: crewTextStyle.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.cake_outlined),
                            Text(
                              "  Date of Birth:   ",
                              style: crewTextStyle,
                            ),
                            Text(
                              '76699',
                              style: crewTextStyle.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(children: [
              Column(
                children: [
                  Image.asset(
                    'images/ping.png',
                  ),
                  Text(
                    "PINGS",
                    style: crewTextStyle.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
