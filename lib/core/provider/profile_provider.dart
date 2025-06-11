import 'package:e_commerce_provider/core/export/export.dart';

class ProfileProvider extends ChangeNotifier {
  bool friend = true;

  void toggleFriend() {
    friend = !friend;
    notifyListeners();
  }
}
