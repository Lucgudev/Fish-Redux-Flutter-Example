import 'package:fish_redux/fish_redux.dart';
import 'package:flutterexcercise/model/animeModel.dart';

class HomeState implements Cloneable<HomeState> {

  bool isLoading = false;
  List<AnimeModel> data;

  @override
  HomeState clone() {
    return HomeState()
        ..data = data
        ..isLoading = isLoading;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
      ..isLoading = true
      ..data=[];
}
