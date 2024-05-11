import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sample_1/screens/vehicle%20page/edit_vehicle_page.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';
import 'package:sample_1/screens/vehicle%20page/vehicle_list_page.dart';

class VehicleDetailsPage extends StatefulWidget {
  const VehicleDetailsPage({super.key});

  @override
  State<VehicleDetailsPage> createState() => _VehicleDetailsPageState();
}

class _VehicleDetailsPageState extends State<VehicleDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int i = 0;
  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(const VehicleListPage());
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Vehicle  Details",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    const Spacer(),
                    const CustomSearchBox(),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(
                          0,
                          97,
                          228,
                          1,
                        ),
                      ),
                      child: const Icon(
                        Icons.file_download_outlined,
                        size: 22,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        height: 310,
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 140,
                                    child: Image.asset(
                                        "assets/side-view-blue-generic-unbranded-suv-car-isolated-white-background_110488-1888 1@2x.png"),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFF0061E4),
                                      ),
                                      height: 45,
                                      width: 45,
                                      child: Center(
                                          child: IconButton(
                                              onPressed: () {
                                                Get.to(const EditVehiclePage());
                                              },
                                              icon: const Icon(
                                                Icons.edit,
                                                color: Colors.white,
                                                size: 18,
                                              )))),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Vehicle No.",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Driver",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 17,
                                      ),
                                      Text(
                                        "Contact No.",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Make",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Model",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "TN 69 AB 5683",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "S Ragu",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "8940189113",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Maruti Suzuki",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "2015",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            CustomCard(
                              cicon: Icons.directions_car,
                              title: "No. of Trips",
                              num: "50",
                            ),
                            CustomCard(
                              cicon: Icons.payments_outlined,
                              title: "Service cost",
                              num: "5,000",
                              rsymbol: "₹ ",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCard(
                              cicon: Icons.car_crash_sharp,
                              title: "Service trip",
                              num: "5",
                            ),
                            CustomCard(
                              cicon: Icons.car_repair_rounded,
                              title: "Special trip",
                              num: "5",
                            ),
                          ],
                        )
                      ],
                    ),
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        height: 310,
                        width: 300,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "KM Limit",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              child: CircularPercentIndicator(
                                radius: 85,
                                lineWidth: 25,
                                percent: 0.75,
                                progressColor: Colors.red,
                                backgroundColor: const Color(0xFFDDDDDD),
                                center: const Center(
                                    child: Text(
                                  "3000",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 50,
                    width: 320,
                    child: TabBar(
                      // indicator: BoxDecoration(border: Border.all()),
                      controller: _tabController,
                      onTap: (e) {
                        setState(() {
                          i = e;
                        });
                      },
                      labelStyle: const TextStyle(color: Colors.black),
                      indicatorWeight: 4,
                      tabs: const [
                        Tab(
                          child: Text(
                            "Ongoing Trip",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Trip History",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              height: 120,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                shadowColor: Colors.orange[100],
                                child: Container(
                                  height: 70,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0xFFE4E4E4),
                                        width: 1,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 90,
                                        width: 180,
                                        child: Image.asset(
                                          "assets/side-view-blue-generic-unbranded-suv-car-isolated-white-background_110488-1888 1@2x.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("S.Ragu",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "19-10-2023    10:11 AM",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "From : ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Office",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 13,
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
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "Anna Nagar,Vilathikulam",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 13,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      0),
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Color(0xFFFDF3E6)),
                                              minimumSize:
                                                  const MaterialStatePropertyAll(
                                                Size(100, 35),
                                              ),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      side: BorderSide.none))),
                                          child: const Text("Assigned",
                                              style: TextStyle(
                                                  color: Color(0xFFE68A00)))),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              backgroundColor:
                                                  Colors.green[900],
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.call_sharp,
                                                      color: Colors.white,
                                                      size: 20))),
                                          const SizedBox(width: 40),
                                          CircleAvatar(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 11, 2, 187),
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.map_outlined,
                                                      color: Colors.white,
                                                      size: 20))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) =>
                              const CustomTripHistroyContainer(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTripHistroyContainer extends StatelessWidget {
  const CustomTripHistroyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 5,
        shadowColor: Colors.orange[100],
        child: Container(
          height: 78,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: const Color(0xFFE4E4E4),
                width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("S Usain Sheik",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "19-10-2023    10:11 AM",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        color: Colors.grey),
                  )
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "From : ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3rd Mile, Thoothukudi.",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
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
                        "New Bus Stand, Thoothukudi",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              const Text(
                "3 Members",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.green[900],
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call_sharp,
                              color: Colors.white, size: 20))),
                  const SizedBox(width: 20),
                  CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 11, 2, 187),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.map_outlined,
                              color: Colors.white, size: 20))),
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 253, 194, 189)),
                      minimumSize: const MaterialStatePropertyAll(
                        Size(100, 35),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide.none))),
                  child: const Text("Cancelled",
                      style: TextStyle(color: Colors.red))),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String num;
  final String title;
  final String? rsymbol;
  final IconData cicon;
  const CustomCard({
    super.key,
    required this.num,
    required this.title,
    required this.cicon,
    this.rsymbol,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          height: 145,
          width: 195,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 55,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD8EFFC),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      cicon,
                      size: 25,
                      color: const Color(0xFF0C5CD7),
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rsymbol ?? '',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    num,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
