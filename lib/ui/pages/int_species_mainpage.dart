
import 'package:bestiarium/ui/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeciesMainPage extends StatelessWidget {
  const SpeciesMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Tribes'),

    ),
    drawer: NavigationDrawer(),
    body:Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/tribes/tribe_empty_bg2.png'),
              fit: BoxFit.fill
          )
      ),
      child: Column(

        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          IconButton(
            icon: Image.asset('assets/images/tribes/tribe_alien.png'),
            iconSize: 90,
            onPressed: () { print("alien"); },),
          Expanded(
            child: FittedBox(),
          ),
          IconButton(
            icon: Image.asset('assets/images/tribes/tribe_brown.png'),
            iconSize: 90,
            onPressed: () { print("brown"); },),
          IconButton(
            icon: Image.asset('assets/images/tribes/tribe_green.png'),
            iconSize: 85,
            onPressed: () { print("green"); },),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(
              icon: Image.asset('assets/images/tribes/tribe_black.png'),
              iconSize: 85,
              onPressed: () { print("black"); },),
            IconButton(
              icon: Image.asset('assets/images/tribes/tribe_white.png'),
              iconSize: 85,
              onPressed: () { print("white"); },),
          ],
          ),
          IconButton(
            icon: Image.asset('assets/images/tribes/tribe_yellow.png'),
            iconSize: 85,
            onPressed: () { print("yellow"); },),
          IconButton(
            icon: Image.asset('assets/images/tribes/tribe_blue.png'),
            iconSize: 85,
            onPressed: () { print("blue"); },),
          Expanded(
            child: FittedBox(),
          ),
        ],
      ),
    )
    );
  }
}
