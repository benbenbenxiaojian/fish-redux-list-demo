import 'package:fish_redux/fish_redux.dart';

enum EditAction { onRemove, remove }

class EditActionCreator {
  static Action onRemoveAction(String uniqueId) =>
      Action(EditAction.onRemove, payload: uniqueId);

  static Action removeAction(String uniqueId) =>
      Action(EditAction.remove, payload: uniqueId);
}
