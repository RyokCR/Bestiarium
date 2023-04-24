

import 'dart:ui';
import 'dart:io';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';
import 'package:bestiarium/ui/pages/creature_page.dart';
import 'package:bestiarium/ui/widgets/ItemBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import '../../utils/search_creatures.dart';



class SearchTable extends StatefulWidget {
  SearchTable({Key? key}) : super(key: key);


  @override
  State<SearchTable> createState() => _SearchTableState();
}

class _SearchTableState extends State<SearchTable> {
  int? sortColumnIndex;
  bool isAscending = false;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
                child: buildDataTable())),
      ),

    );
  }


  Widget buildDataTable(){
    final columns = ['Icon', 'Name', 'Size'];

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
    onSort: column=='Name'?onSort: null

  ))
      .toList();

  List<DataRow> getRows(SearchEntries entries) => entries.entries.map((creature) {

    final endCells = [
      DataCell(
          Image.asset(creature.icon,
            width: 50,),
          onDoubleTap: (){
            _onTap(creature, context);
          }),
      DataCell( Text(creature.name,
        style: TextStyle(fontSize: 17),),
      onDoubleTap: (){
        _onTap(creature, context);
      }
      ),

      DataCell( Text(creature.size,
          overflow: TextOverflow.clip,
          style: TextStyle(fontSize: 17),),

          onDoubleTap: (){
            _onTap(creature, context);
          }
        ),


    ];

    return DataRow(cells: endCells/*getCells(cells)*/);
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell( Text('$data',
  style: TextStyle(fontSize: 17),
  ),
  )).toList();

  void onSort(int columnIndex, bool ascending){



    if(columnIndex == 1){
      List entries = context.read<SearchEntries>().entries;
      entries.sort((creat1, creat2) =>
          compareString(ascending, creat1.name, creat2.name));

      setState(() {
        this.sortColumnIndex = columnIndex;
        this.isAscending = ascending;
        context.read<SearchEntries>().updateEntries(entries);
        print('entries');
      });
    }



  }

  int compareString(bool ascending, String value1, String value2) =>
    ascending ? value1.compareTo(value2) : value2.compareTo(value1);

  updateValues(values){

    setState(() {
      context.watch<SearchEntries>().updateEntries(values);
    });
  }
}

_onTap(creature, context) async{

    var dir = await path_provider.getExternalStorageDirectory();
    var localPath = '${dir?.path}/${creature.name}.jpg';
    bool inStorage;
    try{
      inStorage = await File(localPath).exists();
      //im = Image.file(File(localPath));
      //inStorage = true;
    }
    catch(e){
      inStorage= false;
    }

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Creature_Page(creature: creature,localUrl: localPath, inStorage: inStorage,)));


}

