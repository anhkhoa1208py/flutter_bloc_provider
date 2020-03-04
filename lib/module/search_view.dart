import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/module/search_bloc.dart';
import 'package:flutter_app_bloc/module/search_box.dart';
import 'package:flutter_app_bloc/module/search_result.dart';

class SearchView extends StatelessWidget {
  final SearchBloc searchBloc = SearchBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SearchBox(),
          Expanded(
            child: Result(),
          )
        ],
      ),
    );
  }
}






