import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class AuthenticationService {
//   bool userLoggedIn() {
//     return false;
//   }
// }

class AuthenticationService {
  final _storage = const FlutterSecureStorage();

  // This method checks if the user is logged in, could be from shared preferences, secure storage, etc.
  Future<bool> userLoggedIn() async {
    String? isLoggedIn = await _storage.read(key: 'isLoggedIn');
    // ignore: avoid_print
    print("$isLoggedIn here");
    return isLoggedIn == 'true' ? true : false;
  }

  // This method could handle login logic and save the user state
  Future<bool> login(String username, String password) async {
    bool isValid = false;
    if (password == '1234') {
      setIsLoginTo('true');
      isValid = true;
    } else {
      setIsLoginTo('false');
    }
    return isValid;
  }

  Future<void> setIsLoginTo(String trueOrFalse) async {
    // ignore: avoid_print
    print("islogged in not set to $trueOrFalse here");
    await _storage.write(key: 'isLoggedIn', value: trueOrFalse);
  }
}
