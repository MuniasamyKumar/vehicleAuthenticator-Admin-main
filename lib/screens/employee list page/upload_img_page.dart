import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadFileDialog extends StatelessWidget {
  const UploadFileDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: SizedBox(
            height: 450,
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Upload",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    openFilePicker(context);
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      height: 280,
                      width: 370,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                "assets/bytesize_upload.png",
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Drag & drop files or",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              TextButton(
                                  onPressed: () {
                                    openFilePicker(context);
                                  },
                                  child: const Text(
                                    "Browse",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        color: Color(0xFF0061E4),
                                        fontWeight: FontWeight.w600),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Supported formats JPEG, PNG, PDF",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xFF0061E4)),
                        fixedSize:
                            const MaterialStatePropertyAll(Size(180, 35)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    onPressed: () {},
                    child: const Text(
                      'Upload files',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )),
              ],
            )));
  }
}

Future<void> openFilePicker(BuildContext context) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
  } else {}
}
