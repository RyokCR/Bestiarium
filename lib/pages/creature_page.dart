


import 'package:bestiarium/model/small_creature.dart';
import 'package:bestiarium/themes/icons/my_flutter_app_icons.dart';
import 'package:bestiarium/widgets/ItemBox.dart';
import 'package:bestiarium/widgets/pageBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../drawer.dart';
import '../widgets/creatureBasicDesc.dart';
import '../widgets/largeTextWidget.dart';
import '../widgets/photoView.dart';
import '../widgets/pinchZoomImage.dart';

class Creature_Page extends StatefulWidget {
  Creature_Page({Key? key, required this.creature}) : super(key: key);

  SmallCreature creature;
  @override
  State<Creature_Page> createState() => _Creature_PageState(creature: this.creature);
}

class _Creature_PageState extends State<Creature_Page>  {


  SmallCreature creature;

  _Creature_PageState({required this.creature});





  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Text('Description')),
        drawer: NavigationDrawer(),
      body:  DefaultTabController(
          length: 4,
          child:Scaffold(


            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              automaticallyImplyLeading: false,
              title: TabBar(
                indicatorColor: Colors.amberAccent,
                labelColor: Colors.amber,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(icon: Image.asset('assets/images/book_icon.png')
                  ),
                  Tab(icon: Image.asset('assets/images/text_icon.png')
                  ),
                  Tab(icon: Image.asset('assets/images/map_icon.png')
                  ),
                  Tab(icon: Image.asset('assets/images/pencil_icon.png')
                  ),
                ],
              ),
              //title: Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: [
                CreatureBasicDescription(creature.icon, creature.name, creature.group, creature.size, creature.diet),
                LargeText(creature.description),
                Tab(icon: Image.asset(
                    'assets/images/map_icon.png',
                  scale: 2,
                  color: Colors.grey,
                )
                ),
                //Tab(icon: Icon(Icons.directions_car, size: 200,)),
                Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0
              ),
              child: PinchZoomImage()
              /*BuildImage(
                  controller,
                  tapDownDetails,
                  animationController,
                  animation,

                  context)
                  */
                )
              ],
            ),
          ),
        )
      );




       /* SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15
              ),
              child:PageBox()
          ),
          /*const Divider(color: Colors.deepPurple),
          Padding(
          child: Text(
                  'Naturally curious, these creatures often come close to inspect any unusual beings or objects that enter their habitat. If startled however, they will quickly jump away with extreme speed. Catching one is no easy task. Jer-jers gather in large flocks, and are extremely social. They will perform highly synchronized flight patterns in flocks in order to confuse any perceived predators.'
                  'Jer-Jers are monogamous, and construct large basket-like nests by weaving vegetation together. Call is similar to a rapid chattering, a distinctive jer-jer-jer that gives them their common name.\n\n'
                      'They are well-known and respected by spirits and incarnates alike, as they are drawn to large sources of energy, which facilitates their location. They will often gather around powerful spirits as well.',

                    style: GoogleFonts.alexBrush(
                  fontSize: 30,
                    color: Colors.black),


          ), padding: const EdgeInsets.only(
            left: 15,
            right: 15
          ),
          )*/



        ],
      ),
      )
      )
    );*/
  }
}
