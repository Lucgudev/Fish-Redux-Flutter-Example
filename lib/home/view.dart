import 'dart:io';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Movie Anime List"),
    ),
    body: Center(
      child: (state.isLoading
          ? CircularProgressIndicator()
          : Container(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child:Text(state.data[index].title)),
          );
        }, itemCount: state.data.length,),
      )),
    ),
  );
}
