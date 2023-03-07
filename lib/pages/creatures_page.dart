

import 'dart:ui';

import 'package:bestiarium/db/admin/db_manager.dart';
import 'package:bestiarium/drawer.dart';
import 'package:bestiarium/model/small_creature.dart';
import 'package:bestiarium/themes/icons/my_flutter_app_icons.dart';
import 'package:bestiarium/widgets/ItemBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class Creatures_Page extends StatefulWidget {
  const Creatures_Page({Key? key}) : super(key: key);



  @override
  State<Creatures_Page> createState() => _Creatures_PageState();
}

class _Creatures_PageState extends State<Creatures_Page> {


  late List creatures;
  @override
  initState(){

    var small = Boxes.getSmallCreatures();
    creatures = small.values.toList().cast<SmallCreature>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(title: Text('Creatures')),
      drawer: NavigationDrawer(),
      body:DefaultTabController(
      length: 3,
      child: SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: TabBar(


            indicatorColor: Colors.amberAccent,
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.white,



            tabs: [
              Tab(
                icon:Image.asset('assets/images/monster_icon.png',
                scale: 1,)
                
              ),


              Tab(icon:Image.asset('assets/images/lizard_icon.png')

              ),
              Tab(icon: Image.asset('assets/images/leaf_icon.png')
              ),
            ],
          ),
          //title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                child: Scaffold(
                    body: ListView.builder(

                        itemCount: creatures.length ,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder:
                            (BuildContext context, int index) {
                          return Padding(padding: const EdgeInsets.symmetric(
                              vertical: 8), child:ItemBox(creatures[index], context));
                        })
                )
            ),

            Tab(icon: Icon(Icons.directions_transit, size: 200,)),
            Tab(icon: Icon(Icons.directions_car, size: 200,)),
          ],
        ),
      ),
      ),
      )


    );
  }
}
