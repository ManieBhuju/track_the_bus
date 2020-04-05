import 'package:firebase_auth/firebase_auth.dart';
import 'package:track_the_bus/models/user.dart';


class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on firebaseuser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid);
  }

  //auth change user stream
  Stream<FirebaseUser> get user {
    return _auth.onAuthStateChanged
      .map(_userFromFirebaseUser);
  }

  //sign with email & password
  
}