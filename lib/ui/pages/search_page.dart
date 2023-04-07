


import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/ui/widgets/ItemBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/creatureTable.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final controller = TextEditingController();

  late List creatures_small;
  late List creatures_large;
  late List plants;
  List results = [];
  @override
  initState(){

    var small = Boxes.getSmallCreatures();
    creatures_small = small.values.where((element) => element.category == 'small').toList().cast<SmallCreature>();
    creatures_large = small.values.where((element) => element.category == 'large').toList().cast<SmallCreature>();
    var plantBox = Boxes.getPlants();
    plants = plantBox.values.toList().cast<Plant>();


    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: TextField(
              controller: controller,

              onSubmitted: (String value) async {
                print(controller.text);
                var all = [];
                all.addAll(creatures_large);
                all.addAll(creatures_small);
                all.addAll(plants);


                setState(() {
                  results = _searchText(controller.text, all);
                });



              },
              decoration: InputDecoration(
                  fillColor: Colors.black,
                  focusColor: Colors.black,
                  iconColor: Colors.black,
                  hoverColor: Colors.black,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      /*
                    * Clear the search field
                    * */
                      print("hi");
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none
              ),
            ),
          ),
        ),
      ),
      body: /*ListView.builder(

          itemCount: results.length ,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder:
              (BuildContext context, int index) {
            return Padding(padding: const EdgeInsets.symmetric(
                vertical: 8), child:ItemBox(results[index], context));
          }),*/
      SearchTable()
    );
  }


  List _searchText(String text, List all){
    var results = [];
    for(var item in all){
      for (int i=0;i<=item.name.length-1;i++){
        for (int j=i;j<=item.name.length;j++){
          ///  SUBSTRING COINCIDE
          if(text==item.name.substring(i,j)){
            results.add(item);
            i=item.name.length-1;
            j=item.name.length;
          }
        }
      }
    }
    return results;

  }
}



