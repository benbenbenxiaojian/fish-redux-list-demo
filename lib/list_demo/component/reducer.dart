import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import 'action.dart';

Reducer<CountState> buildReducer() =>
    asReducer(<Object, Reducer<CountState>>{EditAction.remove: _remove});

CountState _remove(CountState state, Action action) {
  final String unique = action.payload;
  return state.clone()..counts.removeWhere((state) => state == unique);
}
