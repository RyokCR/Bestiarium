


import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/ui/widgets/ItemBox.dart';
import 'package:bestiarium/ui/widgets/creatureTable.dart';
import 'package:bestiarium/ui/widgets/dropDownSort.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/services/db/util/db_query_handler.dart';

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
  late List all;
  List results = [];

  late SearchTable _searchTable;
  @override
  initState(){

    var small = Boxes.getSmallCreatures();
    creatures_small = small.values.where((element) => element.category == 'small').toList().cast<SmallCreature>();
    creatures_large = small.values.where((element) => element.category == 'large').toList().cast<SmallCreature>();
    var plantBox = Boxes.getPlants();
    plants = plantBox.values.toList().cast<Plant>();

    all = [];
    all.addAll(creatures_large);
    all.addAll(creatures_small);
    all.addAll(plants);

    _searchTable = SearchTable(entries: all);

    super.initState();
  }

  String dropdownValue = 'All';

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
      body: _searchTable,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple
        ),
        child: Row(
          children: [
            SortButton(
              dropdownValue,
              ['All', 'Plumifera', 'Arthropoda'],
              (String? newValue){
                this.setState(() {
                  dropdownValue = newValue!;
                  all = queryCreaturesByGroup(newValue);

                });
              }
            )
          ],

        ),
      ),
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



