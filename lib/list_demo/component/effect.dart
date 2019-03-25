import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';

Effect<String> buildEffect() =>
    combineEffects(<Object, Effect<String>>{EditAction.onRemove: _onRemove});

void _onRemove(Action action, Context<String> ctx) {
  _select(ctx).then((select) {
    if (select == 'YES') {
      ctx.dispatch(EditActionCreator.removeAction(ctx.state));
    }
  });
}

Future<String> _select(Context<String> ctx) async => showDialog<String>(
    context: ctx.context,
    builder: (buildContext) => AlertDialog(
          title: Text('你是否要删除 "${ctx.state}" ？'),
          actions: <Widget>[
            GestureDetector(
              child: const Text(
                '取消',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => Navigator.of(buildContext).pop(),
            ),
            GestureDetector(
              child: const Text(
                '确定',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => Navigator.of(buildContext).pop('YES'),
            )
          ],
        ));
