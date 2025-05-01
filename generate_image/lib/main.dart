import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generate_image/helper/pref.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // init hive
  await Pref.initialize();

  // for app write initialization
  AppWrite.init();

  // for initializing facebook ads sdk
  AdHelper.init();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: DalleImageGenerator());
  }
}
