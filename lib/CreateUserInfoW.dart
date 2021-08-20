import 'package:flutter/material.dart';
import 'package:statefuldialogs/data/model/User.dart';
import 'package:statefuldialogs/widget/BoxDecorationShadowCircle.dart';

class CreateUserInfo extends StatefulWidget {
  GlobalKey<FormState> globalKey;
  CreateUserInfo({required this.globalKey});

  @override
  _CreateUserInfoState createState() => _CreateUserInfoState();
}

class _CreateUserInfoState extends State<CreateUserInfo> {
  User? user;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // user = InheritedProvider.of<User>(context);

    return Container(
      decoration: BoxDecorationShadowRectangle(),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Form(
        key: widget.globalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
