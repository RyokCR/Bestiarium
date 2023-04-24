

import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/util/db_query_handler.dart';
import 'package:flutter/cupertino.dart';

class SearchEntries extends ChangeNotifier{

  List entries;

  List conditions = ['', 'All','All','All','All'];

  SearchEntries({required this.entries});

  String get name => conditions[0];
  String get group => conditions[1];
  String get diet => conditions[2];
  String get rarity => conditions[3];
  String get danger => conditions[4];

  set name(String newValue) => conditions[0] = newValue;
  set group(String newValue) => conditions[1] = newValue;
  set diet(String newValue) => conditions[2] = newValue;
  set rarity(String newValue) => conditions[3] = newValue;
  set danger(String newValue) => conditions[4] = newValue;


  updateEntries(newEntries){
    entries = newEntries;
    notifyListeners();
  }

  ///NEED TO ADD NAME QUERY
  runQuery(){
    entries = name!='' ? _searchText(conditions[0], queryGetAll()) : queryGetAll();
    //entries = queryCreaturesByGroup(conditions[1]);
    for (int i = entries.length-1;i>=0;i--){
      if(entries[i].runtimeType == SmallCreature){
        if((group!='All' ? entries[i].group != group :false)
            ||(diet!='All' ? entries[i].diet != diet :false)
            ||(rarity!='All' ? entries[i].rarity != rarity: false)
            ||(danger!='All' ? entries[i].danger!=int.parse(danger): false)){
          entries.removeAt(i);
        }
      }else{
          if(group!='All' ? entries[i].type != group :false
              ||diet!='All' ? entries[i].sustainance!=diet: false
              ||rarity!='All'? entries[i].rarity != rarity: false
              ||danger!='All' ? entries[i].danger != danger: false){
            entries.removeAt(i);
          }
      }
    }
    notifyListeners();

  }

  List _searchText(String text, List all){

    var results = [];
    for(var item in all){
      for (int i=0;i<=item.name.length-1;i++){
        for (int j=i;j<=item.name.length;j++){
          ///  SUBSTRING COINCIDE
          if(text.toLowerCase()==item.name.substring(i,j).toLowerCase()){
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