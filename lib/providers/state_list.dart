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

    final states = await API().getStates();
    addAll(states);

    loading = false;
    notifyListeners();
  }

  void addAll(List<StateModel> stateList) {
    states.addAll(stateList);
    notifyListeners();
  }

  // Use null value if you want to deselect.
  void selectState(StateModel? state) {
    selected = state;
    notifyListeners();
  }
}
