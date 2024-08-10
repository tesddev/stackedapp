import 'package:flutter_secure_storage/flutter_secure_storage.dart';


// class AuthenticationService {
//   bool userLoggedIn() {
//     return false;
//   }
// }

class AuthenticationService {

  final _storage = const FlutterSecureStorage();

  Future<void> persistLogin() async {
    await _storage.write(key: 'isLoggedIn', value: 'true');
  }
  // This method checks if the user is logged in, could be from shared preferences, secure storage, etc.
  Future<bool> userLoggedIn() async {
    String? isLoggedIn = await _storage.read(key: 'isLoggedIn');
    // ignore: avoid_print
    print(isLoggedIn);
    return isLoggedIn == 'true' ? true : false;
  }

  // This method could handle login logic and save the user state
  Future<bool> login(String username, String password) async {
    // Implement your login logic here, such as API calls
    // If successful, persist the login state
    bool isValid = false;
    if (password == '1234') {
      persistLogin;
      isValid = true;
    }

    return isValid;
  }

  Future<void> setIsLoginToFalse() async {
    await _storage.write(key: 'isLoggedIn', value: 'false');
  }
  
}