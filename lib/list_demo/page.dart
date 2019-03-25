import 'package:fish_redux/fish_redux.dart';

import 'adapter/adapter.dart';
import 'reducder.dart';
import 'state.dart';
import 'view.dart';

class CountPage extends Page<CountState, Map<String, dynamic>> {
  CountPage()
      : super(
            initState: initState,
            view: buildView,
            reducer: buildReducer(),
            dependencies: Dependencies<CountState>(adapter: CountAdapter()));
}
