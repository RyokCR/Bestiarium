


import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/domain/services/db/util/db_query_handler.dart';
import 'package:bestiarium/ui/widgets/ItemBox.dart';
import 'package:bestiarium/ui/widgets/creatureTable.dart';
import 'package:bestiarium/ui/widgets/dropDownDanger.dart';
import 'package:bestiarium/ui/widgets/dropDownSort.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/services/db/util/constant_values.dart';
import '../../utils/search_creatures.dart';

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

  late SearchEntries _searchEntries;
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

    _searchEntries = SearchEntries(entries: all);

    super.initState();
  }

  String dropdownValueGroup = 'All';
  String dropdownValueDiet = 'All';
  String dropdownValueRarity = 'All';
  String dropdownValueDanger = 'All';


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
                  //results = _searchText(controller.text, all);
                  _searchEntries.name = controller.text;
                  _searchEntries.runQuery();
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
      body: MultiProvider(providers: [ChangeNotifierProvider(create: (_) => _searchEntries),],
      child: SearchTable()),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SortButton(
                dropdownValueGroup,
                DBConstantValues.group_type,
                (String? newValue){
                  setState(() {
                    dropdownValueGroup = newValue!;
                    //all = queryCreaturesByGroup(newValue);
                    //_searchEntries.updateEntries(all);
                    _searchEntries.group = newValue;
                    _searchEntries.runQuery();

                  });
                }
              ),
              SortButton(
                  dropdownValueDiet,
                  DBConstantValues.diet_substinance,
                      (String? newValue){
                    setState(() {
                      dropdownValueDiet = newValue!;
                      //all = queryCreaturesByDiet(newValue);
                      //_searchEntries.updateEntries(all);
                      _searchEntries.diet = newValue;
                      _searchEntries.runQuery();

                    });
                  }
              ),
              SortButton(
                  dropdownValueRarity,
                  DBConstantValues.rarity,
                      (String? newValue){
                    setState(() {
                      dropdownValueRarity = newValue!;
                      //all = queryCreaturesByRarity(newValue);
                      //_searchEntries.updateEntries(all);
                      _searchEntries.rarity = newValue;
                      _searchEntries.runQuery();

                    });
                  }
              ),
              DangerSortButton(
                  dropdownValueDanger,
                  DBConstantValues.danger,
                      (String? newValue){
                    setState(() {
                      dropdownValueDanger = newValue!;
                      //all = queryCreaturesByDanger(newValue);
                      //_searchEntries.updateEntries(all);
                      _searchEntries.danger = newValue;
                      _searchEntries.runQuery();

                    });
                  }
              )
            ],

          ),
        ),
      ),
    );
  }





}



