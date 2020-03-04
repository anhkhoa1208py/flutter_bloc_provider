import 'dart:async';

class SearchBloc {
  var data = [
    "Android",
    "IOS",
    "Flutter",
    "Golang",
    "Python",
    "PHP",
    "Kotlin",
    "Java",
    "C++",
  ];

  StreamController<List<String>> searchController =
      StreamController<List<String>>();

  search(String query){
    if(query.isEmpty){
      searchController.sink.add(data);
      return;
    }_filter(query).then((result){
      searchController.sink.add(result);
    });

  }

  Future<List<String>> _filter(String query){
    var a = Completer<List<String>>();
    List<String> result = [];
    
    data.forEach((value){
      if(value.contains(query)){
        result.add(value);
      }
    });

    a.complete(result);

    return a.future;
  }

  dispose(){
    searchController.close();
  }
}