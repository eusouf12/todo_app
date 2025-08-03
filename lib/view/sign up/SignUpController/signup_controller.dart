import 'dart:io';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isLoading = false.obs;

  Future<void> signupUser({
    required String firstName,
    required String lastName,
    required String email,
    required String address,
    required String password,
    required String confirmPassword,
    File? file,
  }) async {
    isLoading.value = true;

    Map<String, String> body = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'address': address,
    };
    try{

    } catch (e){
      Get.snackbar("Error", e.toString());
    }finally{
      isLoading.value = false;
    }
  }
}
