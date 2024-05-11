import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';
import 'package:sample_1/screens/profile%20page/profile_edit_page.dart';

class ProfileViewPage extends StatefulWidget {
  const ProfileViewPage({super.key});

  @override
  State<ProfileViewPage> createState() => _ProfileViewPageState();
}

class _ProfileViewPageState extends State<ProfileViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 380,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.asset(
                        "assets/image 221.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 120),
                      child: SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 3),
                                      shape: BoxShape.circle),
                                  child: const CircleAvatar(
                                    radius: 100,
                                    backgroundImage:
                                        AssetImage("assets/Ellipse 1 (3).png"),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30, top: 35),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Raja Gopalan",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Managing Director",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xFF5E5E5E)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(const ProfileEditPage());
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(160, 45),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                            color: Color(0xFF0061E4),
                                            width: 2))),
                                child: const Row(children: [
                                  Icon(
                                    Icons.edit_square,
                                    color: Color(0xFF0061E4),
                                    size: 28,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  )
                                ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_4_sharp,
                            color: Color(0xFF0061E4), size: 35),
                        SizedBox(width: 30),
                        Text("ID2765847",
                            style: TextStyle(
                                fontSize: 23, color: Color(0xFf5E5E5E))),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.call, color: Color(0xFF0061E4), size: 35),
                        SizedBox(width: 25),
                        Text("+91 9876543210",
                            style: TextStyle(
                                fontSize: 23, color: Color(0xFf5E5E5E))),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.mail, color: Color(0xFF0061E4), size: 35),
                        SizedBox(width: 25),
                        Text("rajagopalan@samuday.com",
                            style: TextStyle(
                                fontSize: 23, color: Color(0xFf5E5E5E))),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.home_filled,
                            color: Color(0xFF0061E4), size: 35),
                        SizedBox(width: 25),
                        Text("Dr. Richardson, 3891 Ranchview, California 62639",
                            style: TextStyle(
                                fontSize: 23, color: Color(0xFf5E5E5E))),
                      ],
                    ),
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
