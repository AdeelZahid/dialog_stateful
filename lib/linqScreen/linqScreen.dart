import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statefuldialogs/data/model/LinqModel.dart';
import 'package:statefuldialogs/linqScreen/LinqDataNotifier.dart';
import 'package:statefuldialogs/widget/AppUtiles.dart';
import 'package:statefuldialogs/widget/BoxDecorationShadowCircle.dart';

class LinqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ChangeNotifierProvider<LinqDataNotifier>(
        create: (_) => LinqDataNotifier(),
        child: _InternalWidget(),
      ),
    );
  }
}

LinqDataNotifier? _provider;

class _InternalWidget extends StatefulWidget {
  @override
  __InternalWidgetState createState() => __InternalWidgetState();
}

class __InternalWidgetState extends State<_InternalWidget> {
  @override
  Widget build(BuildContext context) {
    _provider = context.watch<LinqDataNotifier>();
    List<Customer> _modell = _provider!.customerFilterdData;
    var _model;
    //_model = _modell.where((element) => element.age! < 20).toList();
    //_model = _modell.where((element) => element.age! > 20 && element.id! > 5).toList();
    //_model = _modell.map((e) => e.Orders).toList();
    //_model = _modell.map((e) => e.id).toList();
    //_model = _modell.map((e) => e.customerName!.toUpperCase()).toList();
    //_model = _modell.map((e) => {"Name": e.customerName!.toUpperCase(), "Age": e.age}).toList();
    // _model =_modell.map((e) => {"name": e.customerName, "age": e.age}).toList();
    // _model.forEach((c) => print("Name is : ${c['name'].toUpperCase()} :::: and Age is : ${c['age']}")); // outPut
    //_model = _modell.where((element) => element.age! > 25).map((e) => {"Name": e.customerName, "Age": e.age}).toList();
    //_model = _modell.expand((c) => c.Orders!).where((e) => e.orderTotal! > 2000); //!=[]
    //_model = _modell.expand((c) => c.Orders!).where((e) => e.orderTotal! > 2000).map((e) => e.orderTotal); // finding in Orders Array(only Order Total)
    //_model = _modell.where((e) => e.age! > 25 && e.id! < 8).expand((element) => element.Orders!).map((e) => e.orderTotal).toList();
    //_model = _modell.where((e) => e.age! > 25 && e.id! < 8).expand((element) => element.Orders!).where((e) => e.orderTotal! > 2000).map((e) => {e.orderID, e.orderTotal}).toList();
    // _model = _modell.expand((e) => e.Orders!).where((o) => o.orderDate!.isAfter(DateTime(2018))).toList();  // filter by date or year
    //_model = _modell.expand((element) => element.Orders!).map((e) => e.orderDate).where((o) => o!.isBefore(DateTime(2017))).toList();
    //_model = _modell.expand((element) =>element.Orders!.map((e) => {element.customerName, e.orderTotal})).toList();
    //_model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => {element.customerName, e.orderTotal})).toList();
    //_model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => {"Name": element.customerName,"Total": e.orderTotal,"Date": e.orderDate})).toList();
    //_model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => {"Name": element.customerName,"Total": e.orderTotal,"Date": e.orderDate})).skip(3).toList();
    //_model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => {"Name": element.customerName,"Total": e.orderTotal,"Date": e.orderDate})).take(3).toList();
    // _model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => e.orderTotal).takeWhile((value) => value! > 4000)).toList();
    //_model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => e.orderTotal).takeWhile((value) => value! > 4000)).first;  //(first or last)  // return only singel record
    //_model = _modell.expand((element) => element.Orders!.where((o) => o.orderTotal! > 3500).map((e) => e.orderTotal).takeWhile((value) => value! > 4000)).elementAt(0); // return only singel record
    //print(_model);

    _model = _modell
        .expand((element) => element.Orders!
            .where((o) => o.orderTotal! > 3500)
            .map((e) => {
                  "Name": element.customerName,
                  "Total": e.orderTotal,
                  "Date": e.orderDate
                }))
        .toList();

    _model.forEach(print);

    // // Union and Intersection
    // var arr = [1, 2, 3, 4, 5, 6];
    // var arr2 = [1, 2, 7, 8, 9, 10];
    // var set1 = arr.toSet().union(arr2.toSet());
    // var set2 = arr.toSet().intersection(arr2.toSet());
    // set2.forEach(print);

    return Container(
      //height: MediaQuery.of(context).size.height * 60 / 100,
      decoration: BoxDecorationShadowRectangle(),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: _model.length,
        itemBuilder: (context, i) {
          return Container(
            width: MediaQuery.of(context).size.width * 20 / 100,
            child: Card(
              child: Text("${i + 1} :  ${_model[i]}"),
            ),
          );
        },
      ),
    );
  }
}
