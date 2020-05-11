import 'package:fish_redux/fish_redux.dart';
import 'package:flutterexcercise/repository/APIs.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    Lifecycle.initState: _init,
    HomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}

void _init(Action action, Context<HomeState> ctx) async {
  APIs.getSummary().then((data) {
    ctx.dispatch(HomeActionCreator.dataFetched(data));
  });
}
