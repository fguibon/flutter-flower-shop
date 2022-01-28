import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 5,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(45),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/profile.png"),
                                radius: 30,
                                backgroundColor: Colors.pink,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Lotus",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    "GOLD MEMBER",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.yellow.shade700,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "154\$ CAN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
