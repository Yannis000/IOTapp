import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:iot/manager/get_it.config.dart';

final locator = GetIt.I;

@injectableInit
void setupLocator() => $initGetIt(locator);