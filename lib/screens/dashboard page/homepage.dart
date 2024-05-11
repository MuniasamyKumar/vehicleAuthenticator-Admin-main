import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sample_1/screens/invoice%20page/invoice_page.dart';
import 'package:sample_1/screens/profile%20page/profile_view_page.dart';
import 'package:sample_1/screens/trips%20page/trip_list_page.dart';
import 'package:sample_1/screens/vehicle%20page/vehicle_list_page.dart';
import '../../Widgets/car_container.dart';
import '../../Widgets/calendar.dart';
import '../employee list page/employee_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDateRange = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      appBar: const MyAppbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 21),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hi, Guru. Welcome!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                      ],
                    ),
                    Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 230,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(
                                    45,
                                    156,
                                    219,
                                    0.15,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.calendar_today_outlined,
                                size: 20,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Filter Periode",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(selectedDateRange,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11)),
                              ],
                            ),
                            IconButton(
                                onPressed: () async {
                                  final selectedDates = await calendar(context);
                                  if (selectedDates != null) {
                                    setState(() {
                                      selectedDateRange = selectedDates
                                          .map((date) =>
                                              DateFormat('yyyy-MM-dd')
                                                  .format(date!))
                                          .join(' to ');
                                    });
                                  }
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  size: 22,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyContainer(
                      connum: 9876543210,
                      ownname: "Ashok",
                      ctrip: 10,
                      ttrip: 120,
                      km: 1200,
                      vnum: 1,
                      picolor: Colors.amber,
                      percentage: 0.7,
                      pibackcolor: Color.fromARGB(255, 225, 202, 134),
                    ),
                    SizedBox(width: 60),
                    MyContainer(
                      connum: 9865543210,
                      ownname: "Arun",
                      ctrip: 10,
                      ttrip: 120,
                      km: 1000,
                      vnum: 2,
                      picolor: Colors.green,
                      percentage: 0.3,
                      pibackcolor: Color.fromARGB(255, 152, 211, 154),
                    ),
                    SizedBox(width: 60),
                    MyContainer(
                      connum: 9876543211,
                      ownname: "Rajkumar",
                      ctrip: 18,
                      ttrip: 126,
                      km: 3200,
                      vnum: 3,
                      picolor: Colors.red,
                      percentage: 0.8,
                      pibackcolor: Color.fromARGB(255, 224, 171, 167),
                    ),
                    SizedBox(width: 60),
                    MyContainer(
                      connum: 9876549210,
                      ownname: "Aravind",
                      ctrip: 8,
                      ttrip: 109,
                      km: 1100,
                      vnum: 4,
                      picolor: Colors.green,
                      percentage: 0.3,
                      pibackcolor: Color.fromARGB(255, 152, 211, 154),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    "Today Trip",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) => const DetailsContainer(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Card(
        elevation: 5,
        child: ExpansionTile(
          trailing: const Padding(
            padding: EdgeInsets.only(left: 40, right: 5, top: 10, bottom: 10),
            child: Icon(
              Icons.expand_more,
              size: 30,
            ),
          ),
          shape: const RoundedRectangleBorder(side: BorderSide.none),
          iconColor: Colors.black,
          textColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 5),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/car01.png"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TN96 BS3545",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "19-10-2023    10:11 AM",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "From : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            Text(
                              "Office",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "To : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            Text(
                              "Vilvamarathupatti",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "User : ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("assets/Ellipse 2.png"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "Guru prasad",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Driver : ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("assets/Ellipse 3.png"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "saran Kumar c",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Total Km  : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            Text(
                              "-",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "No.of Traveller : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            Text(
                              "3",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          children: [
            const Divider(
              color: Colors.grey,
              thickness: 0.5,
              endIndent: 30,
              indent: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 45, top: 10, bottom: 20, right: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Starting Km:  ---",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const Text(
                    "Starting Time:  ---",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const Text(
                    "Ending Km:  ---",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const Text(
                    "Ending Time:  ---",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const Row(
                    children: [
                      Text(
                        "Purpose:  ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        "Ut enim ad minim veniam",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(0),
                          backgroundColor:
                              const MaterialStatePropertyAll(Color(0xFFFDF3E6)),
                          minimumSize: const MaterialStatePropertyAll(
                            Size(100, 35),
                          ),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide.none))),
                      child: const Text("Assigned",
                          style: TextStyle(color: Color(0xFFE68A00)))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 260,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(
              0,
              97,
              228,
              1,
            ),
            borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Get.to(const HomePage());
                    },
                    leading: const Icon(Icons.home, color: Colors.white),
                    title: const Text(
                      "Dashboard",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const EmployeeList());
                    },
                    leading: const Icon(Icons.person_2, color: Colors.white),
                    title: const Text(
                      "Employee List",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const TripListPage());
                    },
                    leading:
                        const Icon(Icons.list_rounded, color: Colors.white),
                    title: const Text(
                      "Trip List",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const InvoicePage());
                    },
                    leading: const Icon(Icons.file_copy, color: Colors.white),
                    title: const Text(
                      "Invoice",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const VehicleListPage());
                    },
                    leading: const Icon(Icons.car_rental, color: Colors.white),
                    title: const Text(
                      "Vehicle",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(const ProfileViewPage());
                    },
                    leading: const Icon(Icons.person, color: Colors.white),
                    title: const Text(
                      "Profile",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const Center(
                              child: LogOutContainer(),
                            );
                          });
                    },
                    leading: const Icon(Icons.logout, color: Colors.white),
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogOutContainer extends StatelessWidget {
  const LogOutContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log Out ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(height: 20),
              Text(
                "Are you sure wont to log out ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 40),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(color: Colors.grey))),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 40),
                        backgroundColor: const Color(0xFF0061E4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: const Text(
                      "Log out",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 450,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 35, right: 15, bottom: 5),
              child: Row(
                children: [
                  const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 25,
                      ))
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              // height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  CustomNotificationContainer(
                    title: "New user added",
                    subtitle: "New user was added as TMU",
                    time: "Now",
                    nNotification: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  CustomNotificationContainer(
                    title: "Special Request",
                    subtitle: "Special request was raised",
                    time: "6 min",
                    nNotification: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  CustomNotificationContainer(
                    title: "Invoice Generated",
                    subtitle: "Monthly invoice was generated",
                    time: "15 min",
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  CustomNotificationContainer(
                    title: "New vehicle",
                    subtitle: "New vehicle was added",
                    time: "16 min",
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  CustomNotificationContainer(
                    title: "Trip cancelled",
                    subtitle: "Trip was canceled due to heavy rain",
                    time: "18 min",
                    nNotification: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomNotificationContainer extends StatefulWidget {
  const CustomNotificationContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    this.nNotification,
  });
  final String title;
  final String subtitle;
  final String time;
  final Widget? nNotification;

  @override
  State<CustomNotificationContainer> createState() =>
      _CustomNotificationContainerState();
}

class _CustomNotificationContainerState
    extends State<CustomNotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  widget.subtitle,
                  style:
                      const TextStyle(fontSize: 16, color: Color(0xff5A6474)),
                ),
                Text(
                  widget.time,
                  style:
                      const TextStyle(fontSize: 13, color: Color(0xff5A6474)),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                if (widget.nNotification != null) widget.nNotification!,
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 22,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
