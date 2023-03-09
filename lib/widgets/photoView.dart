/*import 'dart:ui';

import 'package:flutter/cupertino.dart';





Widget BuildImage(
    /*TransformationController controller,
    TapDownDetails? tapDownDetails,
    AnimationController animationController,
    Animation<Matrix4>? animation,
     */
    context) {





  return GestureDetector(
      onDoubleTapDown: (details) => tapDownDetails = details,
      onDoubleTap: () {
        final position = tapDownDetails!.localPosition;

        final double scale = 3;
        final x = -position.dx * (scale - 1);
        final y = -position.dy * (scale - 1);
        final zoomed = Matrix4.identity()
          ..translate(x, y)
          ..scale(scale);

        final end =
            controller.value.isIdentity() ? zoomed : Matrix4.identity();
        animation = Matrix4Tween(
          begin: controller.value,
          end: end,
        ).animate(
          CurveTween(curve: Curves.easeOut).animate(animationController)
        );


        animationController.forward(from: 0);
      },
      child: InteractiveViewer(
          clipBehavior: Clip.none,
          transformationController: controller,
          panEnabled: false,
          scaleEnabled: false,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              'assets/images/gerbobird.png',
              fit: BoxFit.fitWidth,
            ),
          )));
}
*/