
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices{


  static FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore _store = FirebaseFirestore.instance;



  User? get fireUser{
    return auth.currentUser;
  }

  FirebaseFirestore get firestore => _store;


  Future<String?>  signIn(String email,String password)async{

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );

      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }else{
        return "request timeout";
      }
    }
  }


}