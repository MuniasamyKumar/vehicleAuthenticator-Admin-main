import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_1/screens/vehicle%20page/create_vehicle_page.dart';
import 'package:sample_1/screens/employee%20list%20page/employee_list.dart';
import 'package:sample_1/screens/dashboard%20page/homepage.dart';
import 'package:sample_1/screens/vehicle%20page/vehicle_details.dart';

class VehicleListPage extends StatefulWidget {
  const VehicleListPage({super.key});

  @override
  State<VehicleListPage> createState() => _VehicleListPageState();
}

class _VehicleListPageState extends State<VehicleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppbar(),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Vehicle List",
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
                    ElevatedButton(
                      onPressed: () {
                        Get.to(const CreateVehiclePage());
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(35, 35),
                          backgroundColor: const Color.fromRGBO(
                            0,
                            97,
                            228,
                            1,
                          )),
                      child: const Text(
                        "+",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 320,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return const CarCustomContainer();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CarCustomContainer extends StatelessWidget {
  const CarCustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          height: 320,
          width: 380,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 135,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/side-view-blue-generic-unbranded-suv-car-isolated-white-background_110488-1888 1@2x.png",
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "TN 69 AB 5683",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            "Maruti Suzuki",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "S Ragu",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(const VehicleDetailsPage());
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 37),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: const Color.fromRGBO(
                                0,
                                97,
                                228,
                                1,
                              )),
                          child: const Text(
                            "View Details",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                      )
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
