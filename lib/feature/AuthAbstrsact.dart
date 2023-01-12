import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthAbstract{

  Future<User?> googleLogin({required String androidClientId,required String iosClientId });
  Future<User?> appleLogin();
  Future<User?> facebookLogin();
  Future<User?> phoneLogin();
}