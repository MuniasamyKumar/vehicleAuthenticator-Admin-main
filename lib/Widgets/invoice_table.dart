import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class InvoiceTable extends StatefulWidget {
  const InvoiceTable({super.key});

  @override
  State<InvoiceTable> createState() => _InvoiceTableState();
}

class _InvoiceTableState extends State<InvoiceTable> {
  late List<TripDetails> _tripdetails;
  late TripDetailsDataSource _tripDetailsDataSource;

  @override
  void initState() {
    _tripdetails = getTripDetailsData();
    _tripDetailsDataSource = TripDetailsDataSource(_tripdetails);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 200,
      width: double.infinity,
      child: SfDataGrid(
        source: _tripDetailsDataSource,
        rowHeight: 80,
        columns: [
          
          GridColumn(
              columnName: "tdetails",

              width: 350,
              label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "TRIP DETAILS",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "RATE",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "KM",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "TOLL",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "FUEL",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "AMOUNT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              )),
        ],
        gridLinesVisibility: GridLinesVisibility.both,
        headerGridLinesVisibility: GridLinesVisibility.both,
      ),
    );
  }

  List<TripDetails> getTripDetailsData() {
    return [
      TripDetails("TN 69 D 1345\n \nThoothukudi - Vilathikulam", "Rs.250", 10,
          "Rs.100", "Rs.300", "Rs.1000")
    ];
  }
}

class TripDetailsDataSource extends DataGridSource {
  TripDetailsDataSource(List<TripDetails> tripdetails) {
    dataGridRows = tripdetails
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: "tdetails", value: dataGridRow.tdetails),
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
        alignment: (dataGridCell.columnName == 'tdetails')
          ?Alignment.centerLeft:Alignment.centerRight,
        child:  (dataGridCell.columnName == 'amount')?Text(dataGridCell.value.toString(),style: const TextStyle(fontWeight: FontWeight.bold),):Text(dataGridCell.value.toString())
      );
    }).toList());
  }
}



class TripDetails {
  TripDetails(
      this.tdetails, this.rate, this.km, this.total, this.fuel, this.amount);

  final String tdetails;
  final String rate;
  final int km;
  final String total;
  final String fuel;
  final String amount;
}




