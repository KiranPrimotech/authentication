import 'package:authentication/feature/LoginMethod.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController{


  Future<User?> loginController({required LoginMethod method})  async{
  User? user = await method.execute();
  return user;
  }
}