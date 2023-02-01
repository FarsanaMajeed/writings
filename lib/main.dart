import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:writings/model/view_model/state_manager.dart';
import 'package:writings/ui/routes/rout_names.dart';
import 'package:writings/ui/routes/routes.dart';

import 'model/helper/service_locater.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => getIt<StateManager>()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routers.generateRoute,
          initialRoute: landingScreen),
    );
  }
}
