



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget DangerSortButton(dropdownValue,List<String> values, callback){

  return DropdownButton<String>(
    value: dropdownValue,
    items: values.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
          value: value,
          child: _dangerLevel(value)

      );
    }).toList(),
    onChanged: (String? newValue){
      callback(newValue);
    },
  );
}


Widget _dangerLevel(String st){

  if(st == 'All'){
    return Text(
          st,
          style: TextStyle(fontSize: 10),
        );

  }
  double danger = double.parse(st);
  List<Widget> danLev = [];

  /// static const IconData star_half = IconData(0xe5fc, fontFamily: 'MaterialIcons', matchTextDirection: true);
  for(var i=0; i<danger.toInt(); i++){
    danLev.add(const Icon(Icons.star,color: Colors.grey));
  }
  if(danger > danger.toInt()){
    danLev.add(const Icon(Icons.star_half,color: Colors.grey,));
  }
  if(danLev.isEmpty){
    danLev.add(Text('-',
        style: GoogleFonts.alexBrush(
            fontSize: 40,
            color: Colors.grey
        )
    ));
  }

  return Row(children: danLev);
}