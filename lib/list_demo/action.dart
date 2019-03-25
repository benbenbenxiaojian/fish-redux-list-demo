import 'package:fish_redux/fish_redux.dart';

enum CountAction { add }

class CountActionCreator {
  static Action addAction() => const Action(CountAction.add);
}
