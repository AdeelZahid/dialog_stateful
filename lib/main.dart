import 'package:flutter/material.dart';
import 'package:statefuldialogs/listscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? textFieldVal;

  static showSnackBar(context, String? text) {
    var snackBar = SnackBar(content: Text('$text'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              // contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
              //insetPadding: EdgeInsets.symmetric(horizontal: 10),
              content: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListScreen(),
              ),

              //     Container(
              //   width: double.infinity,
              //   height: 200,
              //   child: Form(
              //       key: _formKey,
              //       child: Column(
              //         mainAxisSize: MainAxisSize.min,
              //         children: [
              //           TextFormField(
              //             controller: _textEditingController,
              //             onSaved: (value) {
              //               textFieldVal = value;
              //             },
              //             onChanged: (value) {
              //               textFieldVal = value;
              //             },
              //             validator: (value) {
              //               return value!.isNotEmpty ? null : "Invalid Field";
              //             },
              //             decoration:
              //                 InputDecoration(hintText: "Enter Some Text"),
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Text("Choice Box"),
              //               Checkbox(
              //                   value: isChecked,
              //                   onChanged: (checked) {
              //                     setState(() {
              //                       isChecked = checked!;
              //                     });
              //                   })
              //             ],
              //           )
              //         ],
              //       )),
              // ),

              // actions: <Widget>[
              //   TextButton(
              //     child: Text('Okay'),
              //     onPressed: () {
              //       if (_formKey.currentState!.validate()) {
              //         print('$textFieldVal and $isChecked');
              //         // Do something like updating SharedPreferences or User Settings etc.
              //         showSnackBar(context,
              //             '$textFieldVal and ${isChecked ? "Check" : "Uncheck"}');
              //         Navigator.of(context).pop();
              //       }
              //     },
              //   ),
              // ],
            );
          });
        });
  }

  Future<void> showInformationDialogg(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            child: ListScreen(),
            // child: SingleChildScrollView(
            //   child: Padding(
            //     padding: const EdgeInsets.all(12.0),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         TextField(
            //           textAlign: TextAlign.center,
            //           decoration: InputDecoration(
            //               border: InputBorder.none,
            //               hintText: 'What do you want to remember?'),
            //         ),
            //         SizedBox(
            //           width: 320.0,
            //           child: RaisedButton(
            //             onPressed: () {
            //               Navigator.of(context).pop();
            //             },
            //             child: Text(
            //               "Save",
            //               style: TextStyle(color: Colors.white),
            //             ),
            //             color: const Color(0xFF1BC0C5),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Dialog"),
      ),
      body: Container(
        child: Center(
          child: FlatButton(
              color: Colors.deepOrange,
              onPressed: () async {
                //await showInformationDialog(context);
                await showInformationDialogg(context);
              },
              child: Text(
                "Stateful Dialog",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
        ),
      ),
    );
  }
}
