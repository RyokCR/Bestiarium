
import 'package:bestiarium/navigation.dart';
import 'package:bestiarium/ui/pages/creatures_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/int_species_mainpage.dart';


class NavigationDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NavigationDrawerState();

}

class _NavigationDrawerState extends State<NavigationDrawer> {

  refresh(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context, refresh),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
  padding: EdgeInsets.only(
    top: MediaQuery.of(context).padding.top,
  ),
);

Widget buildMenuItems(BuildContext context, notifyParent) => Container(
    padding: const EdgeInsets.all(24),
    child:Wrap(
  runSpacing: 16, //vertical spacing
  children:[
    ListTile(
      leading: const Icon(Icons.home_outlined),
      title: const Text('Home'),
      onTap: () {},
    ),
    ListTile(
      //leading: const Icon(Icons.win),
      title: const Text('Creatures and Plants'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Creatures_Page()));

      },
    ),

    ListTile(
      //leading: const Icon(Icons.win),
      title: const Text('Tribes'),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SpeciesMainPage()));

      },
    ),
    const Divider(color: Colors.deepPurple),
    ListTile(
      leading: const Icon(Icons.settings),
      title: const Text('Settings'),
      onTap: () {},
    ),
    ListTile(
      leading: const Icon(Icons.settings),
      title: const Text('Dark Mode'),
      //onTap: () {},
      subtitle: Switch(
        value: themeManager.themeMode == ThemeMode.dark,
        onChanged: (newValue) {
          themeManager.toggleTheme(newValue);
          notifyParent();
          },),
    ),
  ]
)
);