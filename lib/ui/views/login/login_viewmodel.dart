import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/app/app.dialogs.dart';
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
      _navigationService.replaceWith(Routes.homeView);
    } else {
      showDialog();
    }
    setBusy(false);
  }

  // bool get isLoggedIn => _authenticationService.userLoggedIn();

  void showDialog() {
    _dialogService.showDialog(
      // variant: DialogType.infoAlert,
      title: 'Error!',
      description: 'Username or password incorrect.',
    );
  }
}