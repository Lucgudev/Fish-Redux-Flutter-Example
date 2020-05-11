import 'dart:io';

import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.action: _onAction,
      HomeAction.dataFetched: _dataFetched,
    },
  );
}

HomeState _onAction(HomeState state, Action action) {
  final HomeState newState = state.clone();
  return newState;
}

HomeState _dataFetched(HomeState state, Action action) {
  final HomeState newState = state.clone();
  print(action.payload);
  newState.isLoading = false;
  newState.data = action.payload;
  return newState;
}

