import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/module/search_bloc.dart';
import 'package:provider/provider.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<SearchBloc>(context);
    return Container(
      child: StreamBuilder<List<String>>(
          initialData: [],
          stream: bloc.searchController.stream,
          builder: (context, snapshot){
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                  return buildRow(snapshot.data[index]);
                });
          }),
    );
  }

  Widget buildRow(String data){
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(data, style: TextStyle(fontSize: 17, color: Colors.blue),),
    );
  }
}