library authentication;

import 'dart:developer';

import 'package:authentication/feature/AuthAbstrsact.dart';
import 'package:authentication/feature/apple_login.dart';
import 'package:authentication/feature/facebook_login.dart';
import 'package:authentication/feature/google_login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthManager extends AuthAbstract{


  @override
  Future<User?> googleLogin({required String androidClientId,required String iosClientId }) async{
  return await LoginManager().signInWithGoogle(androidClientId: androidClientId, iosClientId: iosClientId);
  }

  @override
  Future<User?> facebookLogin() async{
    return await FacebookManager().signInWithFacebook();
  }

  @override
  Future<User?> appleLogin() async{
    return await AppleLoginService().signInWithApple();
  }

  @override
  Future<User?> phoneLogin() async{
   log("Not Implemented" , name: "Auth Logs");
  }
}
