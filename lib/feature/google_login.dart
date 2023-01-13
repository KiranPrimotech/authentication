import 'dart:io';
import 'package:authentication/feature/LoginMethod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLogin extends LoginMethod  {
  /// Google Login
  late final GoogleSignInAccount? googleUser;
  final String  androidClientId;
  final String  iosClientId;

  GoogleLogin({required this.androidClientId,required this.iosClientId });

  // Future<User?> signInWithGoogle({required String androidClientId,required String iosClientId }) async {
  //   try {
  //     if (Platform.isAndroid) {
  //       googleUser = await GoogleSignIn(
  //               clientId:
  //                   androidClientId)
  //           .signIn();
  //     } else if (Platform.isIOS) {
  //       googleUser = await GoogleSignIn(
  //               clientId: iosClientId)
  //           .signIn();
  //     }
  //
  //
  //     // Obtain the auth details from the request
  //     final GoogleSignInAuthentication? googleAuth =
  //         await googleUser?.authentication;
  //
  //     // Create a new credential
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );
  //
  //     UserCredential userCredential =
  //         await FirebaseAuth.instance.signInWithCredential(credential);
  //     User? user = userCredential.user;
  //
  //     print("User Email --- ${user!.email}");
  //     return user;
  //   } catch (e) {
  //     // Get.snackbar("Google Login ", "Exception --- ${e}",
  //     //     backgroundColor: AppColors.black, colorText: AppColors.white);
  //   }
  // }

  @override
  Future<User?> execute() async{
    try {
      if (Platform.isAndroid) {
        googleUser = await GoogleSignIn(
            clientId:
            androidClientId)
            .signIn();
      } else if (Platform.isIOS) {
        googleUser = await GoogleSignIn(
            clientId: iosClientId)
            .signIn();
      }


      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;

      print("User Email --- ${user!.email}");
      return user;
    } catch (e) {
      // Get.snackbar("Google Login ", "Exception --- ${e}",
      //     backgroundColor: AppColors.black, colorText: AppColors.white);
    }
  }
}
