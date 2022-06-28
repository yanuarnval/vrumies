import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{

  Future<void> signWithGoogle()async{
    try{
      final _auth = FirebaseAuth.instance;
      GoogleAuthProvider _googleAuth = GoogleAuthProvider();
      await _auth.signInWithPopup(_googleAuth);
    }on FirebaseAuthException catch(e){
      rethrow;
    }
  }
}