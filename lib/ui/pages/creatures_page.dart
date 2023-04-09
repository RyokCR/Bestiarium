

import 'dart:ui';

import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/ui/widgets/drawer.dart';

import 'package:bestiarium/ui/pages/search_page.dart';

import 'package:bestiarium/ui/widgets/ItemBox.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/plant.dart';
import 'map_drawer.dart';


class Creatures_Page extends StatefulWidget {
  const Creatures_Page({Key? key}) : super(key: key);



  @override
  State<Creatures_Page> createState() => _Creatures_PageState();
}

class _Creatures_PageState extends State<Creatures_Page> {


  /*add_url(Box<SmallCreature> box) async{
    /*var item =box.values.first;
        //var i = item.getAt(0);
        //'https://github.com/RyokCR/Bestiarium/blob/main/content/drawings/Jer-jer.jpg'
        item.url =  'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Jer-jer.jpg';
       item.save();
*/
      }*/


  late List creatures_small;
  late List creatures_large;
  late List plants;
  @override
  initState(){

    var small = Boxes.getSmallCreatures();
    creatures_small = small.values.where((element) => element.category == 'small').toList().cast<SmallCreature>();
    creatures_large = small.values.where((element) => element.category == 'large').toList().cast<SmallCreature>();
    var plantBox = Boxes.getPlants();
    plants = plantBox.values.toList().cast<Plant>();
    //add_url(small);


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
        body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/Empty_BG.png'),
    fit: BoxFit.fill
    )
    ),
    child: TabBarView(
          children: [


    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/Bestiarium_BG.png'),
            fit: BoxFit.fitWidth
        )
      ),
        child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 0),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                    body: ListView.builder(

                        itemCount: creatures_large.length ,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder:
                            (BuildContext context, int index) {
                          return Padding(padding: const EdgeInsets.symmetric(
                              vertical: 0), child:ItemBox(creatures_large[index], context));
                        })
                )
            )
    ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Bestiarium_BG.png'),
                  fit: BoxFit.fitWidth
              )
          ),child:
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 0),
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: ListView.builder(

                        itemCount: creatures_small.length ,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder:
                            (BuildContext context, int index) {
                          return Padding(padding: const EdgeInsets.symmetric(
                              vertical: 0), child:ItemBox(creatures_small[index], context));
                        })
                )
            )
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Bestiarium_BG.png'),
                  fit: BoxFit.fitWidth
              )
          ),child:Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 0),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView.builder(

                    itemCount: plants.length ,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder:
                        (BuildContext context, int index) {
                      return Padding(padding: const EdgeInsets.symmetric(
                          vertical: 0), child: ItemBox(plants[index], context));
                    })
            )
        )
        ),
          ],
        ),
      ),
      ),
      )


    )
      );
  }
}
