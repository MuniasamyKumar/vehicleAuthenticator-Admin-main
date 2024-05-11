import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/create_dri_page.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';
import 'package:sample_1/screens/employee%20list%20page/upload_img_page.dart';
import 'package:sample_1/screens/vehicle%20page/vehicle_details.dart';

class EditVehiclePage extends StatefulWidget {
  const EditVehiclePage({super.key});

  @override
  State<EditVehiclePage> createState() => _EditVehiclePageState();
}

final _formKey = GlobalKey<FormState>();

class _EditVehiclePageState extends State<EditVehiclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(const VehicleDetailsPage());
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Edit Vehicle",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 310,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFD9D9D9),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/side-view-blue-generic-unbranded-suv-car-isolated-white-background_110488-1888 1 (1).png"))),
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 45,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/Group 1171276170.png"),
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CustomTextForm(
                          title: "Vehicle Number ",
                          star: "*",
                         
                          validation: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your vehicle number';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextForm(
                          title: "Driver ",
                          star: "*",
                       
                          validation: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your driver name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextForm(
                          title: "Contact Number ",
                          star: "*",
                  
                          validation: (value) {
                            if (value.isEmpty) {
                              return 'Contact number is required';
                            }

                            if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                              return 'Please enter a valid 10-digit mobile number';
                            }
                            return null;
                          },
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CustomTextForm(
                          title: "Make ",
                          star: "*",
               
                          validation: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your make company name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomTextForm(
                          title: "Model ",
                          star: "*",
  
                          validation: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your model name';
                            }
                            return null;
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Documents",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 3,
                          child: SizedBox(
                            width: 550,
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 25),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Driving license ",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "*",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "A Driving license is an official document",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      minRadius: 20,
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return const Center(
                                                      child:
                                                          UploadFileDialog());
                                                });
                                          },
                                          icon: const Icon(
                                            Icons.file_upload_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ))),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 3,
                          child: SizedBox(
                            width: 550,
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 25),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "RC Book ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                "*",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.red),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "Aadhar official card",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      minRadius: 20,
                                      child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return const Center(
                                                      child:
                                                          UploadFileDialog());
                                                });
                                          },
                                          icon: const Icon(
                                            Icons.file_upload_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ))),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.white),
                                  fixedSize: const MaterialStatePropertyAll(
                                      Size(130, 45)),
                                  side: const MaterialStatePropertyAll(
                                      BorderSide(
                                          color: Color(0xFF0061E4), width: 2)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                              onPressed: () {
                                Get.to(const VehicleDetailsPage());
                              },
                              child: const Text('Cancel',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0061E4)))),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Color(0xFF0061E4)),
                                  fixedSize: const MaterialStatePropertyAll(
                                      Size(130, 45)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)))),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
                              },
                              child: const Text(
                                'Create',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              )),
                        ],
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
