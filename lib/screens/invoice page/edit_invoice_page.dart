import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:sample_1/screens/invoice%20page/invoice_page.dart';

import '../../Widgets/invoice_table.dart';

class EditInvoicePage extends StatefulWidget {
  const EditInvoicePage({super.key});

  @override
  State<EditInvoicePage> createState() => _EditInvoicePageState();
}

class _EditInvoicePageState extends State<EditInvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: const MyAppbar(),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                      onPressed: () {
                        Get.to(const InvoicePage());
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Edit Invoice",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const CustomInvoiceForm(
                hinttext: "DS/23-24/113",
                title: "Invoice#*",
                width: 80,
              ),
              const CustomInvoiceForm(
                hinttext: "Add a customer",
                title: "Customer Name*",
                width: 30,
              ),
              const CustomInvoiceForm(
                hinttext: "15/12/2023",
                title: "Invoice Date*",
                width: 55,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100, right: 30, top: 40),
                child: InvoiceTable(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150, bottom: 30),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 220,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 242, 242, 248),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(height: 5),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Discount",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(height: 30),
                                  DottedBorder(
                                    radius: const Radius.circular(10),
                                    color: Colors.grey,
                                    borderType: BorderType.RRect,
                                    child: const ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: Center(
                                          child: Text("Adjustment",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                  color: Color(0xFF495057))),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      SizedBox(
                                          height: 30,
                                          width: 60,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "0",
                                                contentPadding:
                                                    EdgeInsets.only(left: 10),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10)),
                                                )),
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.percent_outlined,
                                        size: 17,
                                        color: Color(0xFF495057),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            // color: Colors.white,
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xFF495057))),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide:
                                                            const BorderSide(
                                                          width: 1,
                                                        )),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide:
                                                        const BorderSide(
                                                            width: 1))),
                                          )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.help_outline,
                                        size: 16,
                                        color: Color(0xFF495057),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "0.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Divider(
                            color: Color(0xFF495057),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total ( ₹ )",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomInvoiceForm extends StatelessWidget {
  const CustomInvoiceForm({
    required this.hinttext,
    required this.title,
    required this.width,
    super.key,
  });
  final String hinttext;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80, top: 20),
      child: Row(
        children: [
          Row(
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0061E4))),
              SizedBox(
                width: width,
              ),
              SizedBox(
                width: 280,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: hinttext,
                    hintStyle: const TextStyle(
                        color: Color(0xFF495057),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD7D5E2))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD7D5E2))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xFFD7D5E2))),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
