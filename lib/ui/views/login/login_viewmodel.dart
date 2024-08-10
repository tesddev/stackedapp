import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/app/app.locator.dart';
import 'package:stackedapp/app/app.router.dart';
import 'package:stackedapp/services/authentication_service.dart';

class LoginViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService;
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  LoginViewModel(this._authenticationService);

  Future<void> login(String username, String password) async {
    setBusy(true);
    bool success = await _authenticationService.login(username, password);
    if (success) {
      _navigationService.replaceWith(
        Routes.homeView,
        arguments: const HomeViewArguments(startingIndex: 10),
      );
    } else {
      showDialog();
    }
    setBusy(false);
  }

  void showDialog() {
    _dialogService.showDialog(
      title: 'Error!',
      description: 'Username or password incorrect.',
    );
  }
}
