class Customer {
  int? id;
  String? customerName;
  int? age;
  String? area;
  List<Order>? Orders;

  Customer({this.id, this.customerName, this.area, this.age, this.Orders});

  @override
  String toString() {
    return 'Customer{id: $id, customerName: $customerName, age: $age, area: $area, Orders: $Orders}';
  }
}

class Order {
  int? orderID;
  double? orderTotal;
  DateTime? orderDate;

  Order({this.orderID, this.orderTotal, this.orderDate});

  @override
  String toString() {
    return 'Order{orderID: $orderID, orderTotal: $orderTotal, orderDate: $orderDate}';
  }
}
