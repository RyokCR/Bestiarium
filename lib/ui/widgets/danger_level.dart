


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Widget> dangerLevel(creature){

  List<Widget> danLev = [
    Text('Danger:   ',
        style: GoogleFonts.alexBrush(
            fontSize: 40,
            color: Colors.black
        )
    ),
  ];

  /// static const IconData star_half = IconData(0xe5fc, fontFamily: 'MaterialIcons', matchTextDirection: true);
  for(var i=0; i<creature.danger; i++){
    danLev.add(const Icon(Icons.star,color: Colors.black,));
  }
  if(creature.halfDanger > 0){
    danLev.add(const Icon(Icons.star_half,color: Colors.black,));
  }
  if(danLev.length==1){
    danLev.add(Text('-',
        style: GoogleFonts.alexBrush(
            fontSize: 40,
            color: Colors.black
        )
    ));
  }

  return danLev;
}