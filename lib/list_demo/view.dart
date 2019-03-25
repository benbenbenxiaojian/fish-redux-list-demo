import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
        CountState state, Dispatch dispatch, ViewService viewService) =>
    Scaffold(
      appBar: AppBar(
        title: Text('fish_redux测试-${state.counts.length.toString()}'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: viewService.buildAdapter().itemBuilder,
              itemCount: viewService.buildAdapter().itemCount,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            dispatch(CountActionCreator.addAction());
          }),
    );
