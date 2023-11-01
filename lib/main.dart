import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Upgrader.clearSavedSettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: UpgradeAlert(
        upgrader: Upgrader(
          canDismissDialog: false,
          showIgnore: false,
          showLater: false,
          showReleaseNotes: false,
        ),
        child: Scaffold(
          appBar: AppBar(title: Text('Demo App',style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor: Colors.blue,),
          body: Center(
            child: Text('Hi Brother'),
          ),
        ),
      ),
    );
  }
}

