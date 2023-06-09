import "package:application1/src/repository/authentication_repository/authentication_repository.dart";
import "package:application1/src/repository/user_repository/user_repository.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "../models/user_model.dart";
import "../screens/forget_password/forget_password_otp/otp_screen.dart";

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //Text Field COntrollers to get data from textFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

 // final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createuserWithEmailAndPassword(email, password);

    // if (error != null) {
    //   Get.showSnackbar(GetSnackBar(
    //     message: error.toString(),
    //   ));
    //}
  }
/*
  Future<void> createUser(UserModel user) async {
   await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen()); 
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
  */
}
