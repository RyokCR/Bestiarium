


import 'dart:ui';
import 'package:bestiarium/ui/pages/creatures_page.dart';
import 'package:bestiarium/ui/pages/map_drawer.dart';
import 'package:bestiarium/ui/pages/photo_edit.dart';
import 'package:bestiarium/ui/themes/theme_manager.dart';
import 'package:bestiarium/ui/themes/theme_constants.dart';
import 'package:bestiarium/ui/widgets/drawer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:http/http.dart';


import "package:flutter/material.dart";


void main() =>runApp(NavApp());

ThemeManager themeManager = ThemeManager();

class NavApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NavAppState();

}

class _NavAppState extends State<NavApp> {
  //const NavApp({Key? key}) : super(key: key);

  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      darkTheme: lightTheme,
      themeMode: themeManager.themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => const Creatures_Page(),
        //'/': (context) => const MapDrawer(),
        //'/': (context) => const PhotoEdit(),
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),

        //'/creature': (context) => const Creature_Page(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      drawer:  NavigationDrawer(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Go to screen two"),
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    '/second',
                );
              },
            )
            ,
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Second Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Go to screen one"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> FirstScreen()));
              },
            )
            ,
          ],
        ),
      ),
    );
  }
}

