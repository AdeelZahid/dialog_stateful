import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:statefuldialogs/data/model/User.dart';

class UserDataNotifier extends ChangeNotifier {
  UserDataNotifier() {
    fetchData();
  }

  List<User> get filterData => _filterData;
  set filterData(List<User> users) {
    _filterData = users;
    notifyListeners();
  }

  void addUpdateUser(User user, bool isUpdate) {
    if (isUpdate) {
      int index = _filterData.indexWhere((element) => element.id == user.id);
      _filterData[index] = user;

      int indexMain = _userModel.indexWhere((element) => element.id == user.id);
      _userModel[indexMain] = user;
    } else {
      _userModel.add(user);
      _filterData.add(user);
    }
    notifyListeners();
  }

  void deleteUser(User user) {
    print('Delete User ${user.id}');
    _filterData.remove(user);
    _userModel.remove(user);
    notifyListeners();
  }

  void addingUser(User user) {
    print('Add User ${user.id}');
    _filterData.add(user);
    _userModel.add(user);
    notifyListeners();
  }

  int get rowsPerPage => _rowsPerPage;
  set rowsPerPage(int rowsPerPage) {
    _rowsPerPage = rowsPerPage;
    notifyListeners();
  }

  var _userModel = <User>[];
  var _filterData = <User>[];
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  Future<void> fetchData() async {
    _userModel = [
      new User(
          id: 1,
          name: "mohsin",
          email: "mohsin@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          roleId: 2,
          loginId: "mohsin11",
          password: "123456"),
      new User(
          id: 2,
          name: "adeel",
          email: "adeel@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          roleId: 2,
          isEndDate: false,
          loginId: "adeel11",
          password: "123456"),
      new User(
          id: 3,
          name: "Mudssar 2121",
          roleId: 3,
          email: "Mudssar@gmail.com",
          comment: "enableViewCostPrice",
          isEndDate: false,
          loginId: "mudssar11",
          password: "123456"),
      new User(
          id: 4,
          name: "Zahid",
          roleId: 4,
          email: "Zahid@gmail.com",
          comment: "applyAdjustment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "zahid11",
          password: "123456"),
      new User(
          id: 5,
          name: "Abid",
          email: "Abid@gmail.com",
          comment: "allowPOSDiscount",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "abid11",
          password: "123456"),
      new User(
          id: 5,
          name: "Bilal",
          email: "bilal@gmail.com",
          comment: "allowPOSDiscount",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "bilal11",
          password: "123456"),
      new User(
        id: 5,
        name: "Ch raza",
        email: "ch raza@gmail.com",
        comment: "allowPOSDiscount",
        endDate: "22/10/19",
        isEndDate: true,
        loginId: "ch raza11",
        password: "123456",
      ),
      new User(
          id: 6,
          name: "Khuram",
          email: "Khuram@gmail.com",
          comment: "applyOpenAdjustment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "khuram11",
          password: "123456"),
      new User(
          id: 7,
          name: "Ali",
          email: "Ali@gmail.com",
          comment: "showSecondaryCost",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "ali11",
          password: "123456"),
      new User(
          id: 8,
          name: "Zafar",
          email: "Zafar@gmail.com",
          comment: "hideStockInHelp",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "zafar11",
          password: "123456"),
      new User(
          id: 9,
          name: "Akber",
          email: "Akber@gmail.com",
          comment: "allowReleaseDownload",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "akber11",
          password: "123456"),
      new User(
          id: 10,
          name: "Zunair",
          email: "Zunair@gmail.com",
          comment: "allowPOSPriceEditing",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "zuhair11",
          password: "123456"),
      new User(
          id: 11,
          name: "Ali2",
          email: "ali2@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "mohsin",
          password: "123456"),
      new User(
          id: 12,
          name: "Asif",
          email: "Asif@gmail.com",
          comment: "Asif",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "mohsin",
          password: "123456"),
      new User(
          id: 13,
          name: "Akber",
          email: "Akber2@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "mohsin",
          password: "123456"),
      new User(
          id: 14,
          name: "Mohsin raza",
          email: "mohsinraza@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "mohsin raza",
          password: "123456"),
      new User(
          id: 15,
          name: "Talha",
          email: "Talha@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "Talha",
          password: "123456"),
      new User(
          id: 16,
          name: "Javeed hadir",
          email: "javeedhadir@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "javeed hadir",
          password: "123456"),
      new User(
          id: 17,
          name: "Adeel2",
          email: "adeel2@gmail.com",
          comment: "comment",
          endDate: "22/10/19",
          isEndDate: true,
          loginId: "Adeel2",
          password: "123456"),
    ];
    _filterData.clear();
    _filterData.addAll(_userModel);
    notifyListeners();
  }
}
