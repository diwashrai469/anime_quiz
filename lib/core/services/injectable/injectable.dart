import 'package:anime_quiz/core/services/injectable/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;
@InjectableInit()
void setupLocator() => locator.init();
