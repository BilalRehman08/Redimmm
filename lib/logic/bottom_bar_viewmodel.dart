import 'package:stacked/stacked.dart';

class BottomBarViewModel extends BaseViewModel {
  int counter = 0;
  tappedHomeIcon(int count) {
    counter = count;
    notifyListeners();
    print(counter);
  }
}
