// ignore_for_file: avoid_print

import 'package:stackedapp/app/app.bottomsheets.dart';
import 'package:stackedapp/app/app.dialogs.dart';
import 'package:stackedapp/app/app.locator.dart';
import 'package:stackedapp/app/app.router.dart';
import 'package:stackedapp/services/authentication_service.dart';
import 'package:stackedapp/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({required this.startingIndex});
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  // ignore: unused_field
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  int startingIndex = 0;

  String get counterLabel => 'Counter is: $startingIndex';

  void incrementCounter() {
    startingIndex++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $startingIndex stars on Github',
    );
  }

  void showBottomSheet() {
    // _authenticationService.setIsLoginTo("false");
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void moveToFirstScreen() {
    _navigationService.navigateTo(
      Routes.stackoneView
    );
  }
  void moveToSecondScreen() async {
    var result = await _navigationService.navigateTo(
      Routes.stackTwoView,
    );
    if (result != null) {
        // Handle the result passed back from StackTwoView
        print('Data received from StackTwoView: $result');
        // Update your ViewModel or UI based on the result
    }
  }
  void moveToThirdScreen() {
    _navigationService.navigateTo(
      Routes.stackthreeView
    );
  }
}
