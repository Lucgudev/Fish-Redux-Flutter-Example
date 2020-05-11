import 'package:fish_redux/fish_redux.dart';
import 'package:flutterexcercise/model/animeModel.dart';

enum HomeAction { action, onFetchData, dataFetched }

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }

  static dataFetched(List<AnimeModel> data) {
    print("Action " + data[0].title);
    return Action(HomeAction.dataFetched, payload: data);
  }
}
