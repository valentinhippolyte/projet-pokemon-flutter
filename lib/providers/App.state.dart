import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((ref) {
    return AppStateNotifier();
});

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState());

  void increment(){
    var newState = AppState();
    newState.pokemoney = state.pokemoney +1;
    state = newState;
  }
}


class AppState {
  int pokemoney = 0;
}