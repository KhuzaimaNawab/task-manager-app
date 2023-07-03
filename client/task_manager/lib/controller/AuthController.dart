import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/model/api.dart';

class AuthController extends GetxController {
  bool isLoggedIn = false;

  Future<bool> loginIn(String email, String password) async {
    final cookie = await Api.login(email, password);
    if (cookie != null) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('Cookie', cookie);
      update();
      return true;
    }
    return false;
  }

  Future<bool> signUp(String email, String password, String firstName,
      String lastName, String phoneNumber) async {
    final cookie =
        await Api.signUp(email, password, firstName, lastName, phoneNumber);
    if (cookie != null) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('Cookie', cookie);
      update();
      return true;
    }
    return false;
  }

  Future<void> autoLoginIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final cookie = prefs.getString('Cookie');
    if (cookie != null) {
      isLoggedIn = true;
    }
  }

  void logOut() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('Cookie');

    isLoggedIn = false;
  }
}
