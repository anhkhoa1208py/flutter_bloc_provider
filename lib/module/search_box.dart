import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/module/search_bloc.dart';
import 'package:provider/provider.dart';

class SearchBox extends StatefulWidget {

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {

  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var bloc = Provider.of<SearchBloc>(context);
    searchController.addListener((){
      bloc.search(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: "Search...",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40)
            )
        ),
      ),
    );
  }
}