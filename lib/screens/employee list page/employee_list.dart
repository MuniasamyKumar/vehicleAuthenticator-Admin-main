import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/create_dri_page.dart';
import 'package:sample_1/screens/employee%20list%20page/create_em_page.dart';
import '../dashboard page/homepage.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EmployeeListState createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList>
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Employee List",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const CustomSearchBox(),
                  const SizedBox(
                    width: 20,
                  ),
                  i == 0
                      ? ElevatedButton(
                          onPressed: () {
                            Get.to(const CreateEmployeePage());
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(const Color.fromRGBO(
                              0,
                              97,
                              228,
                              1,
                            )),
                            minimumSize:
                                MaterialStateProperty.all(const Size(140, 45)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          child: const Text(
                            "+ Add User",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            Get.to(const CreateDriverPage());
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(const Color.fromRGBO(
                              0,
                              97,
                              228,
                              1,
                            )),
                            minimumSize:
                                MaterialStateProperty.all(const Size(140, 45)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          child: const Text(
                            '+ Add Driver',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 180, 221, 255),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  controller: _tabController,
                  onTap: (e) {
                    setState(() {
                      i = e;
                    });
                  },
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: const Color.fromRGBO(
                      0,
                      97,
                      228,
                      1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  indicatorColor: const Color.fromARGB(255, 255, 255, 255),
                  tabs: const [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            // color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "User",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_4_rounded,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Driver",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) =>
                              const FirstEContainer(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) =>
                              const SecondEContainar(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 35,
      child: TextFormField(
        decoration: const InputDecoration(
          fillColor: Color(0xFFE8F2FF),
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.blue),
          contentPadding: EdgeInsets.all(10),
          prefixIcon: Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          labelStyle: TextStyle(color: Colors.blueAccent),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class SecondEContainar extends StatefulWidget {
  const SecondEContainar({super.key});

  @override
  State<SecondEContainar> createState() => _SecondEContainarState();
}

class _SecondEContainarState extends State<SecondEContainar> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            shadowColor: Colors.orange[100],
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/Ellipse 1 (2).png"),
                          backgroundColor: Colors.white,
                          radius: 25,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              "S Usain Sheik",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RatingBarIndicator(
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              rating: 4.5,
                              itemCount: 5,
                              itemSize: 19,
                            )
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      "+91 9523452908",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "usainsheik@gmail.com",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize:
                                const MaterialStatePropertyAll(Size(140, 30)),
                            side: const MaterialStatePropertyAll(
                                BorderSide(color: Colors.blue)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        child: const Text(
                          "View Document",
                          style: TextStyle(color: Colors.blue),
                        )),
                    FlutterSwitch(
                        value: light,
                        height: 26,
                        width: 50,
                        onToggle: (bool value) {
                          setState(() {
                            light = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FirstEContainer extends StatelessWidget {
  const FirstEContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        shadowColor: Colors.orange[100],
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/Ellipse 1 (2).png"),
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "S Usain Sheik",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "F000000001",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  "+91 9523452908",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "usainsheik@gmail.com",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "34/1, Anna Nagar, Tuticorin",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu,
            color: Color.fromRGBO(
              0,
              97,
              228,
              1,
            )),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.notifications,
              color: Color.fromRGBO(
                0,
                97,
                228,
                1,
              )),
        ),
      ],
      title: Center(child: Image.asset("assets/logo.png")),
      elevation: 5,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
