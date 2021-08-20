import 'package:flutter/material.dart';
import 'package:statefuldialogs/data/UserDataNotifier.dart';
import 'package:statefuldialogs/data/model/User.dart';

typedef OnRowSelect = void Function(int index);
typedef onDelete = void Function(int index);

class UserDataTableSource extends DataTableSource {
  UserDataTableSource({
    required List<User> userData,
    required this.onRowSelect,
    required this.onDelete,
  })  : _userData = userData,
        assert(userData != null);

  final List<User> _userData;
  final OnRowSelect onRowSelect;
  final OnRowSelect onDelete;

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);
    if (index >= _userData.length) {
      return null;
    }
    final _user = _userData[index];
    print(_user);
    return DataRow.byIndex(
      index: index, // DONT MISS THIS
      cells: <DataCell>[
        DataCell(
            Align(alignment: Alignment.center, child: Text('${index + 1}'))),
        DataCell(Text('${_user.name}')),
        DataCell(Text('${_user.loginId}')),
        DataCell(Text('${_user.email}')),
        DataCell(Text('${_user.comment}')),
        DataCell(Text('${_user.endDate}')),
        DataCell(Text('${_user.isEndDate}')),
        DataCell(Text('${_user.password}')),
        DataCell(Text('${_user.roleId}')),
        DataCell(
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  onRowSelect(index);
                },
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
  int get rowCount => _userData.length;

  @override
  int get selectedRowCount => 0;

  static List<DataColumn> colGen(
    UserDataTableSource _src,
    UserDataNotifier _provider,
  ) =>
      <DataColumn>[
        DataColumn(
          label: Text("No."),
          numeric: true,
          tooltip: "No.",
        ),
        DataColumn(
          label: Text("Name"),
          tooltip: "Name",
        ),
        DataColumn(
          label: Text("Login Id"),
          tooltip: "Login Id",
        ),
        DataColumn(
          label: Text("Email"),
          tooltip: "Email",
        ),
        DataColumn(
          label: Text("Comment"),
          tooltip: "Comment",
          onSort: (colIndex, asc) {},
        ),
        DataColumn(
          label: Text("End Data"),
          tooltip: "End Date",
        ),
        DataColumn(
          label: Text("is End Date"),
          tooltip: "is End Date",
        ),
        DataColumn(
          label: Text("Password"),
          tooltip: "Password",
        ),
        DataColumn(
          label: Text("Role Id"),
          tooltip: "Role ID",
        ),
        DataColumn(
          label: Text("Actions"),
          tooltip: "Actions",
        ),
      ];

  static void _sort<T>(
    Comparable<T> Function(User user) getField,
    int colIndex,
    bool asc,
    UserDataTableSource _src,
    UserDataNotifier _provider,
  ) {
    _src.sort<T>(getField, asc);
    // _provider.sortAscending = asc;
    // _provider.sortColumnIndex = colIndex;
  }

  /*
   *
   * Sorts this list according to the order specified by the [compare] function.
    The [compare] function must act as a [Comparator].
   */
  void sort<T>(Comparable<T> Function(User d) getField, bool ascending) {
    _userData.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });

    notifyListeners();
  }
}
