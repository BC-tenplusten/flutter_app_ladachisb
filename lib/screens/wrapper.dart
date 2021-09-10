import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ladachisb/models/myuser.dart';
import 'package:flutter_app_ladachisb/screens/authenticate/authenticate.dart';
import 'package:flutter_app_ladachisb/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
