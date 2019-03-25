import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';

Widget buildView(String state, Dispatch dispatch, ViewService viewService) =>
    ListTile(
      title: Text(
        state,
        style: TextStyle(fontSize: 18, color: Colors.red),
      ),
      onLongPress: () {
        dispatch(EditActionCreator.onRemoveAction(state));
      },
    );
