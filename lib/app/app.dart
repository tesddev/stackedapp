import 'package:stackedapp/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stackedapp/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stackedapp/ui/views/home/home_view.dart';
import 'package:stackedapp/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapp/ui/views/counter/counter_view.dart';
import 'package:stackedapp/ui/views/login/login_view.dart';
import 'package:stackedapp/services/authentication_service.dart';
import 'package:stackedapp/ui/views/stackone/stackone_view.dart';
import 'package:stackedapp/ui/views/stack_two/stack_two_view.dart';
import 'package:stackedapp/ui/views/stackthree/stackthree_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: CounterView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: StackoneView),
    MaterialRoute(page: StackTwoView),
    MaterialRoute(page: StackthreeView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
