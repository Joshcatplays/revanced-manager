import 'package:revanced_manager/app/app.locator.dart';
import 'package:revanced_manager/app/app.router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:root/root.dart';
import 'package:stacked_services/stacked_services.dart';

class RootCheckerViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  bool isRooted = false;

  Future<void> checkRoot() async {
    bool? res = await Root.isRooted();
    isRooted = res != null && res == true;
    if (isRooted) {
      navigateToHome();
    }
    notifyListeners();
  }

  Future<void> navigateToHome() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isRooted', isRooted);
    _navigationService.navigateTo(Routes.navigation);
    notifyListeners();
  }
}
