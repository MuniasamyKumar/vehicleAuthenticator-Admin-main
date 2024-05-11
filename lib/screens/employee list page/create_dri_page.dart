import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/upload_img_page.dart';
import 'create_em_page.dart';
import 'employee_list.dart';
import '../dashboard page/homepage.dart';

class CreateDriverPage extends StatefulWidget {
  const CreateDriverPage({super.key});

  @override
  State<CreateDriverPage> createState() => _CreateDriverPageState();
}

class _CreateDriverPageState extends State<CreateDriverPage> {
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
                child: Column(children: [
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
                          "Create Driver",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                            currentIcon: Icons.camera,
                            validation: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please upload your image';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                      Column(
                        children: [
                          const CustomTextForm(
                            title: "Last Name",
                          ),
                          const SizedBox(height: 20),
                          const CustomTextForm(title: "Email"),
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
                            star: "*",
                          ),
                          const SizedBox(height: 20),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Driving license",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 20, left: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Aadhar Card*",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                "Aadhar official card",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w400),
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
                                              color: Color(0xFF0061E4),
                                              width: 2)),
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
                  )
                ]),
              ),
            )));
  }
}

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    this.validation,
    required this.title,
    this.star,
    this.currentIcon,
  });
  final IconData? currentIcon;
  final dynamic validation;
  final String title;
  final String? star;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
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
        const SizedBox(height: 10),
        SizedBox(
          width: 555,
          child: TextFormField(
            validator: widget.validation,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {
                      openFilePicker(context);
                    },
                    icon: Icon(
                      widget.currentIcon,
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

class CustomTextForm2 extends StatefulWidget {
  const CustomTextForm2({
    super.key,
    this.validation,
    required this.title,
    this.star,
    required this.items,
  });

  final dynamic validation;
  final String title;
  final String? star;
  final List<DropdownMenuItem<String>>? items;
  @override
  State<CustomTextForm2> createState() => _CustomTextForm2State();
}

class _CustomTextForm2State extends State<CustomTextForm2> {
  final _value = "0";
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
        const SizedBox(height: 10),
        SizedBox(
          width: 555,
          child: DropdownButtonFormField(
            validator: widget.validation,
            icon: const Icon(
              Icons.arrow_drop_down,
              size: 27,
              color: Color(0xFF0061E4),
            ),
            items: widget.items,
            value: _value,
            onChanged: (v) {},
            decoration: InputDecoration(
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
