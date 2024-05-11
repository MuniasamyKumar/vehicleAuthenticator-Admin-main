import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';
import 'package:sample_1/screens/profile%20page/profile_view_page.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

var _value = "0";

class _ProfileEditPageState extends State<ProfileEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const MyAppbar(
        ),
      drawer: const MyDrawer(),
       endDrawer: const MyEndDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xFF0061E4)),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt_rounded,
                                size: 25, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 110),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50, right: 250),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Get.to(const ProfileViewPage());
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      size: 24,
                                      color: Colors.black,
                                    )),
                                const SizedBox(width: 5),
                                const Text(
                                  "Edit profile",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: CircleAvatar(
                              radius: 100,
                              backgroundImage:
                                  const AssetImage("assets/Ellipse 1 (4).png"),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.camera_alt_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        CustomEditForm(
                          hint: "Name",
                        ),
                        SizedBox(height: 30),
                        CustomEditForm(
                          hint: "Employee ID",
                        ),
                        SizedBox(height: 30),
                        CustomEditForm(
                          hint: "Email",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 420,
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF0061E4), width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Color(0xFF0061E4), width: 2)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xFF0061E4), width: 2),
                                ),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "0",
                                  child: Text("Role",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF828282))),
                                ),
                                DropdownMenuItem(
                                  value: "1",
                                  child: Text("Role 1",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Color(0xFF828282))),
                                ),
                                DropdownMenuItem(
                                  value: "2",
                                  child: Text("Role 2",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Color(0xFF828282))),
                                ),
                              ],
                              value: _value,
                              onChanged: (v) {}),
                        ),
                        const SizedBox(height: 30),
                        const CustomEditForm(
                          hint: "Mobile Number",
                        ),
                        const SizedBox(height: 30),
                        const CustomEditForm(
                          hint: "Address",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Color(0xFF0061E4)),
                          fixedSize:
                              const MaterialStatePropertyAll(Size(130, 35)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {},
                      child: const Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomEditForm extends StatelessWidget {
  const CustomEditForm({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 420,
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 18, color: Color(0xFF828282)),
          // contentPadding: const EdgeInsets.only(left: 35),

          // labelText: "labelText",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFF0061E4), width: 2),
          ),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFF0061E4), width: 2)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFF0061E4), width: 2),
          ),
        ),
      ),
    );
  }
}
