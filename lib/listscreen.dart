import 'package:flutter/material.dart';
import 'package:statefuldialogs/CustomPaginatdTable.dart';
import 'package:statefuldialogs/boxDecorate.dart';
import 'package:statefuldialogs/list.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _InternalWidget(),
    );
  }
}

class _InternalWidget extends StatefulWidget {
  @override
  __InternalWidgetState createState() => __InternalWidgetState();
}

class __InternalWidgetState extends State<_InternalWidget> {
  @override
  Widget build(BuildContext context) {
    final _dtSource = PurchaseDataTableSource(
      onRowSelect: (index) async {
        print("Row Selected");
      },
      onDelete: (int index) {
        print("Delete Click");
      },
    );

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecorationShadowRectangle(),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: CustomPaginatedTable(
          dataColumns: PurchaseDataTableSource.colGen(
            _dtSource,
          ),
          showActions: false,
          source: _dtSource,
          onRowChanged: (int? val) {},
        ),
      ),
    );
  }
}
