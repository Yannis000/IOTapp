import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import '../model/model.dart';

@singleton
class HomeViewModel extends ChangeNotifier {

  List<Model> objects = [];
  bool alarmRinging = false;

  final ScrollController scrollController = ScrollController();

  HomeViewModel(){
    loadObjects();
  }

  Future<void> loadObjects() async {
    final db = FirebaseDatabase.instance.reference();
    db.once().then((DataSnapshot snapshot){
      Map<dynamic, dynamic> values1 = snapshot.value; // ON A LES BONS RESULTATS
      values1.forEach((key, values) {
        objects.add(Model.fromSnapshot(values)); //IMPOSSIBLE DE PARSER
      });
    });

    notifyListeners();
  }

  List<Model>? parseObjects(List<dynamic>? jsonArray){
    //immediatly return null if json is null
    if(jsonArray == null) return null;
    return jsonArray.map<Model>((json) => Model.fromJson(json)).toList();
  }
}