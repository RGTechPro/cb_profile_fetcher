import 'package:crewbella/constant.dart';
import 'package:crewbella/profile_model.dart';
import 'package:crewbella/widget/client_card.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class ProfilePage extends StatelessWidget {
  Profile? profile;
  bool? isthere;
  ProfilePage({this.profile, this.isthere});
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
          (isthere!) ? profile!.fullname! : 'not found',
          style: crewTextStyle.copyWith(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: (isthere!)
            ? ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 5),
                    child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 125,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(125),
                          child: Image.network(
                            profile!.imageHD!,
                            height: 243,
                            width: 243,
                            fit: BoxFit.fitWidth,
                          ),
                        )),
                  ),
                  Center(
                    child: Text(
                      profile!.fullname!,
                      style: crewTextStyle.copyWith(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          profile!.username!,
                          style: crewTextStyle.copyWith(fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                              profile!.location!,
                              style: crewTextStyle.copyWith(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 23),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '${profile!.followings!} ',
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
                              '${profile!.quick_bookings!} ',
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
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      onPressed: () {},
                      child: Text('See Quickbook',
                          style: crewTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
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
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_today),
                                  Text(
                                    "  Joined:   ",
                                    style: crewTextStyle,
                                  ),
                                  Text(
                                    profile!.created_at!.substring(0, 16),
                                    style: crewTextStyle.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.cake_outlined),
                                  Text(
                                    "  Date of Birth:   ",
                                    style: crewTextStyle,
                                  ),
                                  Text(
                                    (profile!.dob != null)
                                        ? profile!.dob!
                                        : 'unknown',
                                    style: crewTextStyle.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'images/follow.png',
                          ),
                          Text(
                            "Follow",
                            style: crewTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'images/dm.png',
                          ),
                          Text(
                            "Ping",
                            style: crewTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.work_outline,
                          color: Colors.red.shade800,
                        ),
                        Text(
                          'Client Postings',
                          style: crewTextStyle.copyWith(
                              color: Colors.red.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // ClientCard(),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      // scrollDirection: Axis.vertical,
                      itemCount: profile!.client_posting!.length,
                      itemBuilder: (context, i) {
                        return ClientCard(
                          fullname: profile!.fullname,
                          username: profile!.username,
                          image: profile!.image,
                          location: profile!.client_posting![i]['location'],
                          profession: profile!.client_posting![i]['profession'],
                          experience: profile!.client_posting![i]['experience']
                              .toString(),
                          skills: profile!.client_posting![i]['skills'],
                          isOpen: profile!.client_posting![i]['is_active'],
                        );
                      })
                ],
              )
            : Center(child: Text('Username not found /error')),
      ),
    );
  }
}
