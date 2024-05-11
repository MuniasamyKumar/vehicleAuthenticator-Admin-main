import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/invoice%20page/edit_invoice_page.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';

import '../trips page/trip_list_page.dart';
import 'invoice_bill_page.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  bool _isMoved = false;
  bool _isMoved2 = false;

  void _togglePosition() {
    setState(() {
      _isMoved = !_isMoved;
    });
  }

  void _togglePosition2() {
    setState(() {
      _isMoved2 = !_isMoved2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Invoice",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 140,
                          ),
                          const Spacer(),
                          const CustomSearchBox(),
                          const SizedBox(width: 25),
                          ElevatedButton(
                            onPressed: () {
                              _togglePosition();
                            },
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                minimumSize: const MaterialStatePropertyAll(
                                    Size(90, 45)),
                                side: const MaterialStatePropertyAll(BorderSide(
                                    color: Color(0xFF0061E4), width: 1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Filter",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF0061E4)),
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _togglePosition2();
                            },
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                minimumSize: const MaterialStatePropertyAll(
                                    Size(100, 45)),
                                side: const MaterialStatePropertyAll(BorderSide(
                                    color: Color(0xFF0061E4), width: 1)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Sort by",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF0061E4)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        child: SingleChildScrollView(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 15,
                            itemBuilder: (BuildContext context, int index) =>
                                const InvoiceContainer(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                top: 70,
                right: _isMoved ? 164 : -300,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 50),
                  width: 130,
                  height: 110,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        CustomTextButton(
                          text: "Trips",
                          onPressed: () {
                            _togglePosition();
                          },
                        ),
                        const Divider(
                          height: 0,
                        ),
                        CustomTextButton(
                          text: "Vehicle",
                          onPressed: () {
                            _togglePosition();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                top: 70,
                right: _isMoved2 ? 33 : -300,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 50),
                  width: 130,
                  height: 155,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        CustomTextButton(
                          text: "Daily",
                          onPressed: () {
                            _togglePosition2();
                          },
                        ),
                        const Divider(
                          height: 0,
                        ),
                        CustomTextButton(
                          text: "Weekly",
                          onPressed: () {
                            _togglePosition2();
                          },
                        ),
                        const Divider(
                          height: 0,
                        ),
                        CustomTextButton(
                          text: "Monthly",
                          onPressed: () {
                            _togglePosition2();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InvoiceContainer extends StatelessWidget {
  const InvoiceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Invoice ",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      Text("#INV-23012",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5E6470))),
                    ],
                  ),
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
              const SizedBox(
                width: 30,
              ),
              const Text(
                "65 KM",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xFF0C5CD7)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const InvoiceBillPage());
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        90,
                        35,
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Color(0xFF4D93FF), width: 1))),
                  child: const Text(
                    "View",
                    style: TextStyle(fontSize: 14, color: Color(0xFF0C5CD7)),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const EditInvoicePage());
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        90,
                        35,
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Color(0xFF0F7389), width: 1))),
                  child: const Text(
                    "Edit",
                    style: TextStyle(fontSize: 14, color: Color(0xFF0F7389)),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                        130,
                        35,
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                              color: Color(0xFF0D9D00), width: 1))),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        size: 17,
                        color: Color(0xFF0D9D00),
                      ),
                      Text(
                        "Download",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF0D9D00)),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
