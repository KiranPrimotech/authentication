import 'package:authentication/feature/LoginMethod.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController{
  ///Available Methods
  ///GoogleLogin()
  ///AppleLoginServices()
  ///FaceBookLogin()
  ///
  ///You can create custom Login by extending LoginMethod


  Future<User?> loginController({required LoginMethod method})  async{
  User? user = await method.execute();
  return user;
  }
}