

import 'package:flutter/cupertino.dart';

Widget backgroundContainer(){

  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Empty_BG.png'),
            fit: BoxFit.fill
        )
    ),
  );
}