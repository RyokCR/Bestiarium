import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:dio/dio.dart';

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

  //CHANGE THIS
  String url = 'https://github.com/RyokCR/RyokCR/raw/main/PicsArt_03-06-03.11.38.jpg';

  String downloadMessage = 'Initializing...';
  bool _isDownloading = false;
  double _percentage = 0;

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


    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton.extended(
              onPressed: () async {
                setState(() {
                  _isDownloading = !_isDownloading;
                });
                var dir = await path_provider.getExternalStorageDirectory();

                Dio dio = Dio();
                dio.download(
                    url,
                    '${dir?.path}/gerbobird.jpg',
                    onReceiveProgress: (actualbytes, totalbytes){
                      var percentage = actualbytes / totalbytes * 100;
                      if(percentage < 100) {
                        _percentage = percentage / 100;

                        setState(() {
                          downloadMessage =
                          'Downloading... ${percentage.floor()} %';
                        });
                      }
                      else{
                        setState(() {
                          downloadMessage = 'Done!';
                        });
                      }
                    }
                );
              },
              label: Text('Download'),
              icon: Icon(Icons.file_download),
          ),
          SizedBox(height: 32),
          Text(downloadMessage ?? '',
            style: Theme.of(context).textTheme.bodyMedium),
          Padding(   
            padding: const EdgeInsets.all(8),
            child: LinearProgressIndicator(value: _percentage,)
          )
        ],
      ),
    );


    /*
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
    */

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
