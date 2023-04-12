

import 'dart:ui';

import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/ui/widgets/ItemBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  const SearchTable({Key? key}) : super(key: key);

  @override
  State<SearchTable> createState() => _SearchTableState();
}

class _SearchTableState extends State<SearchTable> {
  int? sortColumnIndex;
  bool isAscending = false;

  var small = Boxes.getSmallCreatures();
  late List<SmallCreature> creatures;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.creatures = small.values.where((element) => element.category == 'small').toList().cast<SmallCreature>();
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
      rows: getRows(creatures),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
      label: Text(column),
    onSort: onSort

  ))
      .toList();

  List<DataRow> getRows(List<SmallCreature> creatures) => creatures.map((SmallCreature creature) {
    final cells = [creature.name, creature.group, creature.size];

    final endCells = [
    DataCell(FittedBox(
      child: Text(creature.name,
        style: TextStyle(fontSize: 17),),
      fit: BoxFit.contain,)),
      DataCell(FittedBox(
        child: Image.asset(creature.icon))),
      DataCell(FittedBox(
        child: Text(creature.size,
          style: TextStyle(fontSize: 17),),
        fit: BoxFit.contain,)),

    ];

    return DataRow(cells: endCells/*getCells(cells)*/);
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(FittedBox(
        child: Text('$data',
  style: TextStyle(fontSize: 17),),
      fit: BoxFit.contain,)
  )).toList();

  void onSort(int columnIndex, bool ascending){


    if(columnIndex == 0){
      creatures.sort((creat1, creat2) =>
      compareString(ascending, creat1.name, creat2.name));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
      print(creatures);
    });

  }

  int compareString(bool ascending, String value1, String value2) =>
    ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}


