import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountState> buildReducer() => asReducer(<Object, Reducer<CountState>>{
      CountAction.add: _add,
    });

CountState _add(CountState state, Action action) {
  final clone = state.clone();
  clone.counts.add('fish-redux ${clone.counts.length.toString()}');
  return clone;
}
