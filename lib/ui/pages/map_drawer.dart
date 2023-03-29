
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class DrawingPoint {
  int id;
  List<Offset> offsets;
  Color color;
  double width;

  DrawingPoint({
    this.id = -1,
    this.offsets = const [],
    this.color = Colors.black,
    this.width = 2
  });

  DrawingPoint copyWith({List<Offset>? offsets}){
    return DrawingPoint(
      id: id,
      color: color,
      width: width,
      offsets: offsets ?? this.offsets
    );
  }
}

class DrawingArea {
  late Offset point;
  late Paint areaPaint;

  DrawingArea({required this.point, required this.areaPaint});
}


class MapDrawer extends StatefulWidget {
  const MapDrawer({Key? key}) : super(key: key);

  @override
  State<MapDrawer> createState() => _MapDrawerState();
}

class _MapDrawerState extends State<MapDrawer> {

  List<DrawingArea?> points = [];
  late Color selectedColor;
  late double strokeWidth;


  var historyDrawingPoints = <DrawingPoint>[];
  var drawingPoints = <DrawingPoint>[];

  DrawingPoint? currentDrawingPoint;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedColor = Colors.black;
    strokeWidth = 2.0;
  }


  void selectColor(){
    showDialog(
      context: context,
      builder: (BuildContext context){
      return AlertDialog(
        title: const Text('Color Chooser'),
        content: SingleChildScrollView(
          child: BlockPicker(
            pickerColor: selectedColor,
            onColorChanged: (color){
              setState(() {
                selectedColor = color;
              });
            },
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: const Text("Close"),
          )
        ],
      );
      });
  }



  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
                width: width ,
                height: height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(138, 35, 125, 1.0),
                    Color.fromRGBO(233, 64, 87, 1.0),
                    Color.fromRGBO(242, 113, 33, 1.0),
                  ]
                )
              ),


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: width,//width * 0.80,
                    height: height * 0.80,
                    /*decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 5.0,
                          spreadRadius: 1.0
                        )
                      ]
                    ),*/
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Map.png'),
                            fit: BoxFit.fill

                        )
                    ),
                    child: GestureDetector(
                      onPanStart: ((details) {
                        /// NEW VERSION WITH HISTORY
                        setState(() {
                          currentDrawingPoint = DrawingPoint(
                              id: DateTime.now().microsecondsSinceEpoch,
                              offsets: [
                                details.localPosition
                              ]
                          );

                          if(currentDrawingPoint == null) return; ///????
                          drawingPoints.add(currentDrawingPoint!);
                          //historyDrawingPoints.add(currentDrawingPoint!);
                          historyDrawingPoints = List.of(drawingPoints);

                        });

                      }),
                      onPanDown: (details){
                        /*this.setState(() {
                          //points.add(details.localPosition);
                          points.add(DrawingArea(
                              point: details.localPosition,
                              areaPaint: Paint()
                          ..strokeCap = StrokeCap.round
                          ..strokeWidth = strokeWidth
                          ..color = selectedColor
                          ..isAntiAlias = true));
                      });*/
                        },
                      onPanUpdate: (details){
                        /*this.setState(() {
                          //points.add(details.localPosition);
                          points.add(DrawingArea(
                              point: details.localPosition,
                              areaPaint: Paint()
                                ..strokeCap = StrokeCap.round
                                ..strokeWidth = strokeWidth
                                ..color = selectedColor
                                ..isAntiAlias = true));
                        });*/

                        /// NEW VERSION WITH HISTORY
                        setState(() {

                          if(currentDrawingPoint == null) return;

                          currentDrawingPoint = currentDrawingPoint?.copyWith(
                              offsets: currentDrawingPoint!.offsets
                                ..add(details.localPosition)
                          );

                          drawingPoints.last = currentDrawingPoint!;
                          historyDrawingPoints = List.of(drawingPoints);
                        });

                      },
                      onPanEnd: (details ){
                        /*this.setState(() {
                          points.add(null);
                        });*/
                        /// NEW VERSION WITH HISTORY
                        currentDrawingPoint = null;
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: CustomPaint(
                          painter: MyCustomPainter(drawingPoints: drawingPoints),
                        ),
                      ),
                    ),
                  ),


            SizedBox(
              height: 10,
            ),
            Container(
              width: width * 0.80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.color_lens, color: selectedColor),
                      onPressed: (){
                    selectColor();
                      }),
                  Expanded(child: Slider(
                    min: 1.0,
                    max: 7.0,
                    activeColor: selectedColor,
                    value: strokeWidth,onChanged: (value){
                      this.setState(() {
                        strokeWidth = value;
                      });
                  },)),
                  IconButton(icon: Icon(Icons.layers_clear, color: Colors.black),onPressed: (){
                    this.setState(() {
                      points.clear();
                    });
                  })
                ],
              ),
            )
            ]
    ),
    ),
          ),
      ),
      ]

    ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "Undo",
            onPressed: (){

              if(drawingPoints.isNotEmpty && historyDrawingPoints.isNotEmpty){
                setState(() {
                  drawingPoints.removeLast();
                });
              }
            },
            child: const Icon(Icons.undo),
          ),
          const SizedBox(width: 16,),
          FloatingActionButton(
            heroTag: "Redo",
            onPressed: (){
              setState(() {
                if(drawingPoints.length < historyDrawingPoints.length){
                  final index = drawingPoints.length;
                  drawingPoints.add(historyDrawingPoints[index]);
                }
              });
            },
            child: const Icon(Icons.redo),
          )
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter{

  //List<DrawingArea?> points;

  final List<DrawingPoint> drawingPoints;

  MyCustomPainter({required this.drawingPoints});
  @override
  void paint(Canvas canvas, Size size) {
    /**
     *
     *  ADD MAP IMAGE HERE
     *
     *
     */
    /*Paint background = Paint()..color = Colors.white;
    Rect rect = Rect.fromLTWH(0, 0 , size.width, size.height);
    canvas.drawRect(rect, background);

    /*Paint paint = Paint();
    paint.color = Colors.black;
    paint.strokeWidth = 2.0;
    paint.isAntiAlias = true;
    paint.strokeCap = StrokeCap.round;*/

    for(int x=0;x<points.length-1;x++){
      if(points[x]!=null&&points[x+1]!= null){
        canvas.drawLine(points[x]!.point, points[x+1]!.point, points[x]!.areaPaint);
      }
      else if(points[x]!=null && points[x+1]!=null){
        canvas.drawPoints(PointMode.points, [points[x]!.point], points[x]!.areaPaint);
      }
    }
*/

    for(var drawingPoint in drawingPoints){
      final paint = Paint()
        ..color = drawingPoint.color
        ..isAntiAlias = true
        ..strokeWidth = drawingPoint.width
        ..strokeCap = StrokeCap.round;

      for (var i=0; i < drawingPoint.offsets.length; i++){
        var notLastOffset = i != drawingPoint.offsets.length - 1;

        if(notLastOffset){
          final current = drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i+1];
          canvas.drawLine(current, next, paint);
        }else{
          //nothing
        }
      }
    }
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}