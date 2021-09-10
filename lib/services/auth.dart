import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_ladachisb/models/myuser.dart';
import 'package:provider/provider.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //user object
  MyUser? _userfromFirebase(User user) {
    return MyUser(uid: user.uid);
  }

  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userfromFirebase(user!));
  }

  //sign in anonymous
  Future signInAnon() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user;
      return _userfromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in email

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
