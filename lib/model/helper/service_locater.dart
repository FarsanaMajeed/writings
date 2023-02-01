// ignore: depend_on_referenced_packages
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
import 'package:writings/model/view_model/state_manager.dart';


final getIt = GetIt.instance;

Future <void> setupServiceLocator() async {
  getIt.registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());
  getIt.registerSingleton<StateManager>(StateManager());

}
