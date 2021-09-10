import 'package:flutter/material.dart';
import 'package:flutter_app_ladachisb/services/auth.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ladachi'),
        backgroundColor: Colors.grey,
        elevation: 0.0,
        actions: <Widget>[
          ElevatedButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
      ),
    );
  }
}
