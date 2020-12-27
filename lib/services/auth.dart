import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signInAnon() async {
    try{
      // UserCredential credential = await _auth.signInAnonymously();
      // // ignore: deprecated_member_use
      // FirebaseUser user = credential.user;
      return await _auth.signInAnonymously();

    }catch(e){
      print(e.toString());
      return null;

    }
  }
}