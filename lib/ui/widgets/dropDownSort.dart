

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SortButton(dropdownValue,List<String> values, callback){

  return DropdownButton<String>(
    value: dropdownValue,
    items: values.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 10),
          )
      );
    }).toList(),
    onChanged: (String? newValue){
      callback(newValue);
    },
  );
}