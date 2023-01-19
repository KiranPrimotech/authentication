import 'package:firebase_auth/firebase_auth.dart';

 class Error{

  Future<FirebaseAuthException> authError(FirebaseAuthException e) async {
    FirebaseAuthException exception;
    exception =e;

    return exception;

  }

}
abstract  class ErrorAuth {
   authError(FirebaseAuthException e);
}