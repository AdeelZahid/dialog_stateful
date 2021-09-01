import 'package:flutter/material.dart';
import 'package:statefuldialogs/data/model/LinqModel.dart';

class LinqDataNotifier extends ChangeNotifier {
  LinqDataNotifier() {
    fetchLinqData();
  }

  Customer? _data;

  List<Customer> get customerFilterdData => _customerFilterData;
  set customerFilterdData(List<Customer> customers) {
    _customerFilterData = customers;
    notifyListeners();
  }

  set data(List<Customer> c) {}

  var _customersModel = <Customer>[];
  var _customerFilterData = <Customer>[];
  Future<void> fetchLinqData() async {
    _customersModel = <Customer>[
      new Customer(
        id: 5,
        customerName: "Adeel",
        age: 22,
        area: "faisalabad",
        Orders: <Order>[
          Order(
            orderID: 1011,
            orderTotal: 1500.0,
            orderDate: DateTime(2015, 2, 5),
          ),
          Order(
            orderID: 1002,
            orderTotal: 2000.0,
            orderDate: DateTime(2016, 11, 10),
          ),
          Order(
            orderID: 1003,
            orderTotal: 1000.0,
            orderDate: DateTime(2017, 6, 23),
          ),
        ],
      ),
      new Customer(
        id: 1,
        customerName: "Mudssar",
        age: 30,
        area: "lahore",
        Orders: <Order>[
          Order(
            orderID: 2001,
            orderTotal: 900.0,
            orderDate: DateTime(2018, 6, 10),
          ),
          Order(
            orderID: 1001,
            orderTotal: 3500.0,
            orderDate: DateTime(2016, 3, 17),
          ),
          Order(
            orderID: 2010,
            orderTotal: 1400.0,
            orderDate: DateTime(2017, 8, 4),
          ),
        ],
      ),
      new Customer(
        id: 2,
        customerName: "Haseeb",
        age: 18,
        area: "karachi",
        Orders: <Order>[
          Order(
            orderID: 1070,
            orderTotal: 3820.50,
            orderDate: DateTime(2018, 5, 30),
          ),
          Order(
            orderID: 1010,
            orderTotal: 1900.0,
            orderDate: DateTime(2017, 12, 3),
          ),
          Order(
            orderID: 1245,
            orderTotal: 888.0,
            orderDate: DateTime(2016, 6, 18),
          ),
        ],
      ),
      new Customer(
        id: 7,
        customerName: "Muneeb",
        age: 27,
        area: "okara",
        Orders: <Order>[
          Order(
            orderID: 1321,
            orderTotal: 2300.0,
            orderDate: DateTime(2017, 4, 20),
          ),
          Order(
            orderID: 1455,
            orderTotal: 1250.50,
            orderDate: DateTime(2017, 12, 13),
          ),
          Order(
            orderID: 1009,
            orderTotal: 5000.0,
            orderDate: DateTime(2018, 2, 28),
          ),
        ],
      ),
      new Customer(
        id: 3,
        customerName: "Mohsin",
        age: 30,
        area: "islamabad",
        Orders: <Order>[
          Order(
            orderID: 1617,
            orderTotal: 1718.0,
            orderDate: DateTime(2016, 9, 9),
          ),
          Order(
            orderID: 2011,
            orderTotal: 1822.50,
            orderDate: DateTime(2017, 1, 22),
          ),
          Order(
            orderID: 1861,
            orderTotal: 4200.0,
            orderDate: DateTime(2018, 3, 17),
          ),
        ],
      ),
      new Customer(
        id: 4,
        customerName: "faisal",
        age: 37,
        area: "dhuddiwala",
        Orders: <Order>[
          Order(
            orderID: 1133,
            orderTotal: 4390.0,
            orderDate: DateTime(2018, 4, 19),
          ),
          Order(
            orderID: 1902,
            orderTotal: 1800.00,
            orderDate: DateTime(2017, 11, 8),
          ),
          Order(
            orderID: 1302,
            orderTotal: 2367.30,
            orderDate: DateTime(2017, 3, 17),
          ),
        ],
      ),
      new Customer(
        id: 11,
        customerName: "Adeel",
        age: 26,
        area: "dhuddiwala",
        Orders: <Order>[
          Order(
            orderID: 1133,
            orderTotal: 4390.0,
            orderDate: DateTime(2018, 4, 19),
          ),
          Order(
            orderID: 1902,
            orderTotal: 1800.00,
            orderDate: DateTime(2017, 11, 8),
          ),
          Order(
            orderID: 1302,
            orderTotal: 2367.30,
            orderDate: DateTime(2017, 3, 17),
          ),
        ],
      ),
      new Customer(
        id: 9,
        customerName: "khurram",
        age: 21,
        area: "almehran",
        Orders: <Order>[
          Order(
            orderID: 1212,
            orderTotal: 1600.0,
            orderDate: DateTime(2015, 7, 18),
          ),
          Order(
            orderID: 2006,
            orderTotal: 1010.00,
            orderDate: DateTime(2018, 5, 24),
          ),
          Order(
            orderID: 1786,
            orderTotal: 1341.30,
            orderDate: DateTime(2017, 10, 15),
          ),
        ],
      ),
    ];

    _customerFilterData.clear();
    _customerFilterData.addAll(_customersModel);
    notifyListeners();
  }
}
