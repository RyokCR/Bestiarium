

import 'dart:ui';

import 'package:bestiarium/db/admin/db_manager.dart';
import 'package:bestiarium/ui/widgets/drawer.dart';
import 'package:bestiarium/model/small_creature.dart';
import 'package:bestiarium/ui/pages/search_page.dart';

import 'package:bestiarium/ui/widgets/ItemBox.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class Creatures_Page extends StatefulWidget {
  const Creatures_Page({Key? key}) : super(key: key);



  @override
  State<Creatures_Page> createState() => _Creatures_PageState();
}

class _Creatures_PageState extends State<Creatures_Page> {


  add_url(Box<SmallCreature> box) async{
    /*var item =box.values.first;
        //var i = item.getAt(0);
        //'https://github.com/RyokCR/Bestiarium/blob/main/content/drawings/Jer-jer.jpg'
        item.url =  'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Jer-jer.jpg';
       item.save();
*/
      }


  late List creatures;
  @override
  initState(){

    var small = Boxes.getSmallCreatures();
    creatures = small.values.toList().cast<SmallCreature>();
    add_url(small);


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
          title: Text('Creatures'),
          actions: [
            //Navigate to the Search Screen
            IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search),
            )
          ],
      ),
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
