import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class InvoiceTable extends StatefulWidget {
  const InvoiceTable({super.key});

  @override
  State<InvoiceTable> createState() => _InvoiceTableState();
}

class _InvoiceTableState extends State<InvoiceTable> {
  late List<BillDetails> _billdetails;
  late BillDetailsDataSource _billDetailsDataSource;

  @override
  void initState() {
    _billdetails = getBillDetailsData();
    _billDetailsDataSource = BillDetailsDataSource(_billdetails);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double totalHeight = _billdetails.length * 110;
    return SizedBox(
      height: totalHeight + 50,
      width: 950,
      // width: double.infinity,
      child: SfDataGridTheme(
        data: SfDataGridThemeData(
           gridLineColor: Colors.white,
          gridLineStrokeWidth: 2,
        ),
        child: ClipRect(
          clipper: CustomLeftClipper(),
          child: SfDataGrid(
            verticalScrollPhysics: const NeverScrollableScrollPhysics(),
            
            source: _billDetailsDataSource,
            rowHeight: 110,
            defaultColumnWidth: 500,
            columns: [
              GridColumn(
                  columnName: "service",
                  width: 350,
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Service",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  width: 120,
                  columnName: "rate",
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Rate",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  width: 120,
                  columnName: "km",
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Km",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  width: 120,
                  columnName: "total",
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Toll",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  width: 120,
                  columnName: "fuel",
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Fuel",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
              GridColumn(
                  width: 120,
                  columnName: "amount",
                  label: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      "Amount",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
            ],
            gridLinesVisibility: GridLinesVisibility.horizontal,
            headerGridLinesVisibility: GridLinesVisibility.horizontal,
          ),
        ),
      ),
    );
  }

  List<BillDetails> getBillDetailsData() {
    return [
      BillDetails(
          "TN 69 D 1345\nThoothukudi - Vilathikulam\nOn call - Duty Trip",
          "Rs.250",
          10,
          "Rs.100",
          "Rs.300",
          "Rs.1000"),
      BillDetails(
          "TN 69 D 1345\nThoothukudi - Vilathikulam\nShuttle - Extra Trip",
          "Rs.250",
          10,
          "Rs.100",
          "Rs.300",
          "Rs.1000"),
      BillDetails(
          "TN 69 D 1345\nThoothukudi - Vilathikulam\nRegular - Night Trip",
          "Rs.250",
          10,
          "Rs.100",
          "Rs.300",
          "Rs.1000"),
          
      
    ];
  }
}

class BillDetailsDataSource extends DataGridSource {
  BillDetailsDataSource(List<BillDetails> billdetails) {
    dataGridRows = billdetails
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: "service", value: dataGridRow.service),
              DataGridCell<String>(columnName: "rate", value: dataGridRow.rate),
              DataGridCell<int>(columnName: "km", value: dataGridRow.km),
              DataGridCell<String>(
                  columnName: "total", value: dataGridRow.total),
              DataGridCell<String>(columnName: "fuel", value: dataGridRow.fuel),
              DataGridCell<String>(
                  columnName: "amount", value: dataGridRow.amount),
            ]))
        .toList();
  }
  late List<DataGridRow> dataGridRows;
  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          alignment: (dataGridCell.columnName == 'service')
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: (dataGridCell.columnName == 'service')
              ? Text(
                  dataGridCell.value.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                )
              : Text(dataGridCell.value.toString(),style: const TextStyle(fontSize: 20),));
    }).toList());
  }
}

class BillDetails {
  BillDetails(
      this.service, this.rate, this.km, this.total, this.fuel, this.amount);

  final String service;
  final String rate;
  final int km;
  final String total;
  final String fuel;
  final String amount;
}

class CustomLeftClipper extends CustomClipper<Rect> {

  @override

  Rect getClip(Size size) {

    return Rect.fromLTWH(2, 2, size.width - 2, size.height - 2);

  }

 

  @override

  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;

}