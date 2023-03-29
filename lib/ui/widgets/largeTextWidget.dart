

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget LargeText(text){

  return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/page_background.jpg'),
                        fit: BoxFit.cover

                    )
                ),

                child:Padding(
                  /*child: Text(
                    'Naturally curious, these creatures often come close to inspect any unusual beings or objects that enter their habitat. If startled however, they will quickly jump away with extreme speed. Catching one is no easy task. Jer-jers gather in large flocks, and are extremely social. They will perform highly synchronized flight patterns in flocks in order to confuse any perceived predators.'
                        'Jer-Jers are monogamous, and construct large basket-like nests by weaving vegetation together. Call is similar to a rapid chattering, a distinctive jer-jer-jer that gives them their common name.\n\n'
                        'They are well-known and respected by spirits and incarnates alike, as they are drawn to large sources of energy, which facilitates their location. They will often gather around powerful spirits as well.',
*/
                    child: Column(
                      children: [
                        Text(
                          text,
                        style: GoogleFonts.alexBrush(
                            fontSize: 30,
                            color: Colors.black),


                  ),
                        const Divider(height: 120),
                      ],
                    ), padding: const EdgeInsets.only(
                    left: 15,
                    right: 15
                ),
                )
            ),



          ]
      )
  );
}