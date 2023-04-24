


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/entities/plant.dart';

Widget PlantBasicDescription(Plant plant/*image, name, group, size, diet*/) {
  return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/new_background.jpg'),
                fit: BoxFit.cover

            )
        ),

        child: Column(
            children: <Widget>[
              Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(

                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                            image: AssetImage(plant.icon),
                          ),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              width: 1
                          ),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                      )
                  )
              ),
              const Divider(height: 30),
              Center(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(plant.name,
                      style: GoogleFonts.alexBrush(
                          fontSize: 50,
                          color: Colors.black
                      )
                  ),
                ),

              ),
              const Divider(height: 30),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text('Type: ' + plant.type,
                          style: GoogleFonts.alexBrush(
                              fontSize: 40,
                              color: Colors.black
                          )
                      ),
                    ),

                  )
              ),
              const Divider(height: 30),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text('Size: ' + plant.size,
                          style: GoogleFonts.alexBrush(
                              fontSize: 40,
                              color: Colors.black
                          )
                      ),
                    ),

                  )
              ),
              const Divider(height: 30),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text('Sustainance: ' + plant.sustainance,
                          style: GoogleFonts.alexBrush(
                              fontSize: 40,
                              color: Colors.black
                          )
                      ),
                    ),


                  ),

              ),
              const Divider(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Properties: ' + plant.properties,
                        style: GoogleFonts.alexBrush(
                            fontSize: 40,
                            color: Colors.black
                        )
                    ),
                  ),


                ),

              ),
              const Divider(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Rarity: ' + plant.rarity,
                        style: GoogleFonts.alexBrush(
                            fontSize: 40,
                            color: Colors.black
                        )
                    ),
                  ),


                ),

              ),
              const Divider(height: 120),
            ]
        ),


      )
  );
}