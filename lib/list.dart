import 'package:flutter/material.dart';

typedef OnRowSelect = void Function(int index);
typedef onDelete = void Function(int index);

class PurchaseDataTableSource extends DataTableSource {
  PurchaseDataTableSource({
    required this.onRowSelect,
    required this.onDelete,
  });

  final OnRowSelect onRowSelect;
  final OnRowSelect onDelete;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);

    return DataRow.byIndex(
      index: index, // DONT MISS THIS
      cells: <DataCell>[
        DataCell(
            Align(alignment: Alignment.center, child: Text('${index + 1}'))),
        DataCell(Text('code')),
        DataCell(Text('name')),
        DataCell(Text('salePrice')),
        DataCell(Text('purchasePrice')),
        DataCell(Text('Colour')),
        DataCell(Text('purchasePrice')),
        DataCell(Text('Size')),
        DataCell(
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () => onRowSelect(index),
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  onDelete(index);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 5;

  @override
  int get selectedRowCount => 0;

  static List<DataColumn> colGen(
    PurchaseDataTableSource _src,
  ) =>
      <DataColumn>[
        DataColumn(
          label: Text("No."),
          numeric: true,
          tooltip: "No.",
        ),
        DataColumn(
          label: Text("Code"),
          tooltip: "Code",
        ),
        DataColumn(
          label: Text("Name"),
          tooltip: "Supplier Name",
        ),
        DataColumn(
          label: Text("Sale Price"),
          tooltip: "Sale Price",
        ),
        DataColumn(
          label: Text("Purchase Price"),
          tooltip: "purchase Price",
          onSort: (colIndex, asc) {},
        ),
        DataColumn(
          label: Text("Colour"),
          tooltip: "Colour",
        ),
        DataColumn(
          label: Text("Capacity"),
          tooltip: "Capacity",
        ),
        DataColumn(
          label: Text("Size"),
          tooltip: "Size",
        ),
        DataColumn(
          label: Text("Edit"),
          tooltip: "Edit",
        ),
      ];
}
