import 'package:fish_redux/fish_redux.dart';

import '../todo_list_page/list_adapter/adapter.dart';
import 'effect.dart';
import 'reducer.dart';
import 'report_component/component.dart';
import 'state.dart';
import 'view.dart';

class ToDoListPage extends Page<PageState, Map<String, dynamic>> {
  ToDoListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PageState>(
                adapter: ToDoListAdapter(),
                slots: <String, Dependent<PageState>>{
                  'report': ReportConnector() + ReportComponent()
                }),
            middlewares: <Middleware<PageState>>[
              logMiddleware(tag: 'ToDoListPage'),
            ]);
}
