import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../model/model.dart';

@singleton
class HomeViewModel extends ChangeNotifier {

  List<Model>? objects = [];

  final ScrollController scrollController = ScrollController();

  HomeViewModel();
}