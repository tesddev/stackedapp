// ignore_for_file: avoid_print

import 'package:stacked/stacked.dart';
import 'package:stackedapp/app/app.locator.dart';
import 'package:stackedapp/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    Future<bool> isLoggedIn = _authenticationService.userLoggedIn();
    if (await isLoggedIn) {
      _navigationService.replaceWith(Routes.homeView);
      print("home shown");
    } else {
      _navigationService.replaceWith(Routes.loginView);
      print("login shown");
    }
  }
}
