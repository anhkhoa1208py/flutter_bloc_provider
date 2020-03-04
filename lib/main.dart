import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/module/search_bloc.dart';
import 'package:provider/provider.dart';
import 'module/search_view.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bloc",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Bloc"),
        ),
        body: Provider<SearchBloc>.value(
            value: SearchBloc(),
            child: SearchView()
        ),
      ),
    );
  }
}


