import 'dart:ui';

import 'package:flutter/material.dart';

class PinchZoomImage extends StatefulWidget {
  const PinchZoomImage({Key? key}) : super(key: key);

  @override
  State<PinchZoomImage> createState() => _PinchZoomImageState();
}

class _PinchZoomImageState extends State<PinchZoomImage> with SingleTickerProviderStateMixin {

  late TransformationController controller;
  TapDownDetails? tapDownDetails;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = TransformationController();
    animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200)
    )..addListener(() {
      controller.value = animation!.value;
    })

    ;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/mesa.jpg'),
    fit: BoxFit.cover

    )
    ),

    child: InteractiveViewer(
      transformationController: controller,
      panEnabled: false,
      onInteractionEnd: (details){
        resetAnimation();
      },
      child: AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        child: Image.asset('assets/images/Jer-jer.jpg',
        fit: BoxFit.fitWidth
        ),
        ),
      )
      )
    );
  }

  void resetAnimation(){
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity()

    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut)
    );

    animationController.forward(from: 0);
  }
}
