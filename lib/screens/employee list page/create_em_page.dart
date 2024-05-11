import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';

import 'create_dri_page.dart';
import 'upload_img_page.dart';

class CreateEmployeePage extends StatefulWidget {
  const CreateEmployeePage({super.key});

  @override
  State<CreateEmployeePage> createState() => _CreateEmployeePageState();
}

class _CreateEmployeePageState extends State<CreateEmployeePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppbar(),
        drawer: const MyDrawer(),
        endDrawer: const MyEndDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.to(const EmployeeList());
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 23,
                              color: Colors.black,
                            )),
                        const SizedBox(width: 5),
                        const Text(
                          "Create User",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CustomTextForm(
                            title: "First Name",
                            star: "*",
                            validation: (value) {
                              if (value.isEmpty) {
                                return 'Name is required';
                              }

                              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'Please enter a valid name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                            title: "Mobile Number",
                            star: "*",
                            validation: (value) {
                              if (value.isEmpty) {
                                return 'Mobile number is required';
                              }

                              if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                                return 'Please enter a valid 10-digit mobile number';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomTextForm3(
                            title: "Date of birth",
                            star: "*",
                            icon: Icons.calendar_month,
                            validation: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your DOB';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomTextForm(
                            title: "Upload Image",
                            star: "*",
                            cameraicon: Icons.camera,
                            validation: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please upload your image';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomTextForm(
                            title: "Employee ID",
                            star: "*",
                            validation: (value) {
                              if (value.isEmpty) {
                                return 'Employee ID is required';
                              }
                              if (!RegExp(r'^[A-Za-z0-9]{5}$')
                                  .hasMatch(value)) {
                                return 'Please enter a valid 5-character alphanumeric employee ID';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const CustomTextForm(
                            title: "Last Name",
                          ),
                          const SizedBox(height: 20),
                          const CustomTextForm(
                            title: "Email",
                          ),
                          const SizedBox(height: 20),
                          CustomTextForm2(
                            items: const [
                              DropdownMenuItem(
                                value: "0",
                                child: Text("Male",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                              ),
                              DropdownMenuItem(
                                value: "1",
                                child: Text("Female",
                                    style: TextStyle(
                                      fontSize: 19,
                                    )),
                              ),
                            ],
                            validation: (value) {
                              if (value.isEmpty) {
                                return 'Gender is required';
                              }
                              return null;
                            },
                            title: "Gender",
                            star: "*",
                          ),
                          const SizedBox(height: 20),
                          CustomTextForm(
                              validation: (value) {
                                if (value.isEmpty) {
                                  return 'Pincode is required';
                                }
                                if (!RegExp(r'^[0-9]{6}$').hasMatch(value)) {
                                  return 'Please enter a valid 6-digit pincode';
                                }
                                return null;
                              },
                              title: "Pincode",
                              star: "*"),
                          const SizedBox(height: 20),
                          CustomTextForm2(
                            validation: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name text';
                              }
                              return null;
                            },
                            items: const [
                              DropdownMenuItem(
                                value: "0",
                                child: Text("Admin",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                              ),
                              DropdownMenuItem(
                                value: "1",
                                child: Text(
                                  "SPOC",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: "2",
                                child: Text(
                                  "User",
                                  style: TextStyle(
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                            ],
                            title: "Desigination",
                            star: "*",
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '*',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 120,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your address';
                              }
                              return null;
                            },
                            maxLines: 3,
                            decoration: InputDecoration(
                              // hintText: "hintText",
                              // labelText: "labelText",

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
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                fixedSize: const MaterialStatePropertyAll(
                                    Size(130, 45)),
                                side: const MaterialStatePropertyAll(BorderSide(
                                    color: Color(0xFF0061E4), width: 2)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                            onPressed: () {
                              Get.to(const EmployeeList());
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
                                backgroundColor: const MaterialStatePropertyAll(
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
          ),
        ));
  }
}

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    this.validation,
    required this.title,
    this.star,
    this.cameraicon,
  });
  final IconData? cameraicon;
  final dynamic validation;
  final String title;
  final String? star;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              star ?? '',
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          // height: 70,
          width: 555,
          child: TextFormField(
            validator: validation,
            decoration: InputDecoration(
              // hintText: "hintText",
              // labelText: "labelText",
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {
                      openFilePicker(context);
                    },
                    icon: Icon(
                      cameraicon,
                      size: 27,
                      color: const Color(0xFF0061E4),
                    )),
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xFF0061E4), width: 2),
              ),

              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xFF0061E4), width: 2)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xFF0061E4), width: 2),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomTextForm3 extends StatefulWidget {
  const CustomTextForm3({
    super.key,
    this.validation,
    required this.title,
    this.star,
    this.icon,
  });
  final IconData? icon;
  final dynamic validation;
  final String title;
  final String? star;

  @override
  State<CustomTextForm3> createState() => _CustomTextForm3State();
}

class _CustomTextForm3State extends State<CustomTextForm3> {
  final TextEditingController _dateController = TextEditingController();

  late DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              widget.star ?? '',
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: 555,
          child: TextFormField(
            controller: _dateController,
            readOnly: true,
            onTap: () => _selectDate(context),
            validator: widget.validation,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    icon: Icon(
                      widget.icon,
                      size: 27,
                      color: const Color(0xFF0061E4),
                    )),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xFF0061E4), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xFF0061E4), width: 2)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xFF0061E4), width: 2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
