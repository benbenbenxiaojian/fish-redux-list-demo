import 'package:fish_redux/fish_redux.dart';

class CountState implements Cloneable<CountState> {
  List<String> counts = [];

  @override
  CountState clone() => CountState()..counts = counts;
}

CountState initState(Map<String, dynamic> args) => CountState();
