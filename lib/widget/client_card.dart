import 'package:crewbella/constant.dart';
import 'package:flutter/material.dart';

class ClientCard extends StatelessWidget {
  String? fullname;
  String? username;
  String? profession;
  String? skills;
  String? location;
  String? experience;
  bool? isOpen;
  String? image;
  ClientCard(
      {this.fullname,
      this.experience,
      this.image,
      this.isOpen,
      this.location,
      this.profession,
      this.skills,
      this.username});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xfffff2fb),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: Offset(0, .5),
                  spreadRadius: .1,
                  blurRadius: 10),
            ],
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Colors.grey.withOpacity(.01))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                        radius: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            image!,
                            height: 60,
                            width: 60,
                            fit: BoxFit.fitWidth,
                          ),
                        )),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fullname!,
                            style: crewTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            username!,
                            style: crewTextStyle.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Icon(
                    Icons.more_vert,
                    size: 35,
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'POSTING',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.yellow.shade700,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: (isOpen!) ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          (isOpen!) ? 'OPEN' : 'CLOSED',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Looking for',
                            style: crewTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            profession!,
                            style: crewTextStyle.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: crewTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location!,
                            style: crewTextStyle.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Experience',
                            style: crewTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            experience!,
                            style: crewTextStyle.copyWith(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Skills',
                              style: crewTextStyle.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              (skills != null) ? skills! : 'No skill',
                              overflow: TextOverflow.clip,
                              style: crewTextStyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.line_style,
                            color: Colors.black,
                          ),
                          Text(
                            'Details',
                            style: crewTextStyle.copyWith(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            Text(
                              'Apply',
                              style:
                                  crewTextStyle.copyWith(color: Colors.black),
                            )
                          ],
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: Colors.black,
                            ),
                            Text(
                              'Ping',
                              style:
                                  crewTextStyle.copyWith(color: Colors.black),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
