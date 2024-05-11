// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sample_1/screens/invoice%20page/edit_invoice_page.dart';
import 'package:screenshot/screenshot.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';
import 'invoice_bill_table.dart';

class InvoiceBillPage extends StatefulWidget {
  const InvoiceBillPage({Key? key}) : super(key: key);

  @override
  State<InvoiceBillPage> createState() => _InvoiceBillPageState();
}

class _InvoiceBillPageState extends State<InvoiceBillPage> {
  final GlobalKey repaintBoundaryKey = GlobalKey();
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 24),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 185,
                              child: Image.asset(
                                "assets/logo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              "Date",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "01 Aug, 2023",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              "Invoice",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "#INV-23012",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const EditInvoicePage());
                    },
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF0061E4),
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await requestStoragePermission();
                      takeScreenshot();
                    },
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF0061E4),
                      ),
                      child: const Icon(
                        Icons.file_download_outlined,
                        color: Colors.white,
                        size: 37,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              RepaintBoundary(
                key: repaintBoundaryKey,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 70, right: 200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "From",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Samuday",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Company address",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "City, Country - 00000",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "+0 (000) 123-4567",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bill To",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Fast track",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Business address",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "City, State, IN - 000 000",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "TAX ID 00XXXXX1234X0XX",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color(0xFF5E6470),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(5)),
                            child: const Column(
                              children: [
                                SizedBox(height: 20),
                                Divider(
                                  thickness: 2,
                                  endIndent: 15,
                                  indent: 15,
                                  color: Colors.white,
                                ),
                                InvoiceTable(),
                                Divider(
                                  thickness: 2,
                                  endIndent: 15,
                                  indent: 15,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      width: 350,
                                      height: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CustomBillRow(
                                            text: "Subtotal",
                                            money: "Rs.900.00",
                                          ),
                                          Divider(
                                            thickness: 2,
                                            color: Colors.white,
                                          ),
                                          CustomBillRow(
                                            text: "Total",
                                            money: "Rs.900.00",
                                          ),
                                          Divider(
                                            thickness: 2,
                                            color: Colors.white,
                                          ),
                                          CustomBillRow(
                                            text: "Amount due",
                                            money: "Rs.900.00",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 100),
                              ],
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Text(
                              "Samuday",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff3976F2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "+0 (000) 123-4567",
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff5E6470),
                              ),
                            ),
                            Text(
                              "   |   ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff5E6470),
                              ),
                            ),
                            Text(
                              "hello@email.com",
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff5E6470),
                              ),
                            ),
                          ],
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

  Future<void> requestStoragePermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
    }
  }

  Future<void> takeScreenshot() async {
    try {
      final boundary = repaintBoundaryKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary;
      final image = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes = byteData?.buffer.asUint8List();

      if (pngBytes != null) {
        final pdf = pw.Document();
        final image = pw.MemoryImage(pngBytes);
        pdf.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (pw.Context context) => pw.Center(
              child: pw.Image(image),
            ),
          ),
        );

        final directory = await getExternalStorageDirectory();
        final file = File('${directory?.path}/receipt.pdf');
        await file.writeAsBytes(await pdf.save());

        print('PDF saved successfully');

        await OpenFile.open(file.path);
      } else {
        print('Error: Unable to capture screenshot');
      }
    } catch (exception) {
      print('Error: $exception');
    }
  }
}

class CustomBillRow extends StatelessWidget {
  const CustomBillRow({
    super.key,
    required this.text,
    required this.money,
    this.fontWeight,
  });
  final String text;
  final String money;
  final dynamic fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        const Spacer(),
        Text(money, style: TextStyle(fontWeight: fontWeight, fontSize: 22))
      ],
    );
  }
}
