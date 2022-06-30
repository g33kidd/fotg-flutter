import 'package:flutter/foundation.dart';

import '../api/api.dart';
import '../model/state.dart';

class StateListProvider extends ChangeNotifier {
  bool loading = false;
  List<StateModel> states = [];
  StateModel? selected;

  Future<void> init() async {
    loading = true;
    notifyListeners();

    states = await API().getStates();
    loading = false;
    if (states.isNotEmpty) {
      selected = states.first;
    }
    notifyListeners();
  }

  // Use null value if you want to deselect.
  void selectState(StateModel? state) {
    selected = state;
    notifyListeners();
  }
}
