

import 'dart:ui';

import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/ui/widgets/ItemBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../utils/search_creatures.dart';

/*Widget monsterSearch(creatures_large){

  return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      child: Scaffold(
          body: ListView.builder(

              itemCount: creatures_large.length ,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder:
                  (BuildContext context, int index) {
                return Padding(padding: const EdgeInsets.symmetric(
                    vertical: 8), child:ItemBox(creatures_large[index], context));
              })
      )
  );
}*/

class SearchTable extends StatefulWidget {
  SearchTable({Key? key}) : super(key: key);


  //List entries;
  @override
  State<SearchTable> createState() => _SearchTableState();
}

class _SearchTableState extends State<SearchTable> {
  //List entries;
  int? sortColumnIndex;
  bool isAscending = false;

  //_SearchTableState();

  //var small = Boxes.getSmallCreatures();
  //late List<SmallCreature> creatures;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //this.creatures = small.values.where((element) => element.category == 'small').toList().cast<SmallCreature>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: buildDataTable()),
      ),

    );
  }


  Widget buildDataTable(){
    final columns = ['Name', 'Icon', 'Size'];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(context.watch<SearchEntries>()),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
      label: Text(column),
    onSort: onSort

  ))
      .toList();

  List<DataRow> getRows(SearchEntries entries) => entries.entries.map((creature) {
    //final cells = [creature.name, creature.group, creature.size];

    final endCells = [
    DataCell( Text(creature.name,
        style: TextStyle(fontSize: 17),),
      ),
      DataCell(
        Image.asset(creature.icon)),
      DataCell( Text(creature.size,
          style: TextStyle(fontSize: 17),),
        ),

    ];

    return DataRow(cells: endCells/*getCells(cells)*/);
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell( Text('$data',
  style: TextStyle(fontSize: 17),),

  )).toList();

  void onSort(int columnIndex, bool ascending){


    if(columnIndex == 0){
      context.watch<SearchEntries>().entries.sort((creat1, creat2) =>
      compareString(ascending, creat1.name, creat2.name));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
      //print(entries);
    });

  }

  int compareString(bool ascending, String value1, String value2) =>
    ascending ? value1.compareTo(value2) : value2.compareTo(value1);

  updateValues(values){

    setState(() {
      context.watch<SearchEntries>().updateEntries(values);
    });
  }
}


