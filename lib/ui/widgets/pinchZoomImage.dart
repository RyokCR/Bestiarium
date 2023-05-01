import 'dart:io';
import 'dart:ui';

import 'package:bestiarium/domain/repositories/download_manager.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:dio/dio.dart';
//import 'package:bestiarium/domain/repositories/download_manager.dart';

class PinchZoomImage extends StatefulWidget {
  const PinchZoomImage({Key? key, required this.url,  required this.inStorage,required this.localUrl}) : super(key: key);

  final String url;
  final String localUrl;
  final bool inStorage;

  @override
  State<PinchZoomImage> createState() => _PinchZoomImageState(url: url, inStorage: inStorage, localUrl: localUrl);
}

class _PinchZoomImageState extends State<PinchZoomImage> with SingleTickerProviderStateMixin {

  late TransformationController controller;
  TapDownDetails? tapDownDetails;
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  //CHANGE THIS
  final String url;//= 'https://github.com/RyokCR/RyokCR/raw/main/PicsArt_03-06-03.11.38.jpg';

  final String localUrl ;//=  '/storage/emulated/0/Android/data/sko.raym.bestiarium/files/gerbobird.jpg';

  String downloadMessage = 'Initializing...';
  bool _isDownloading = false;
  double _percentage = 0;

  bool inStorage ;

  late double width;
  late double height;

  _PinchZoomImageState({required this.url, required this.inStorage, required this.localUrl});

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

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    if (!inStorage) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton.extended(
              onPressed: () async {
                if (!_isDownloading) {
                  setState(() {
                    _isDownloading = !_isDownloading;

                  });
                  var dir = await path_provider.getExternalStorageDirectory();


                  /*Dio dio = Dio();
                  dio.download(
                    url,
                    //'${dir?.path}/gerbobird.jpg',
                      localUrl,
                      onReceiveProgress: (actualbytes, totalbytes) {
                        var percentage = actualbytes / totalbytes * 100;
                        if (percentage < 100) {
                          _percentage = percentage / 100;

                          setState(() {
                            downloadMessage =
                            'Downloading... ${percentage.floor()} %';
                          });
                        }
                        else {
                          setState(() {
                            downloadMessage = 'Done!';
                            inStorage = true;
                          });
                        }
                      }
                  );

                   */
                  DownloadsManager.download_file(
                      url,
                      localUrl,
                          (actualbytes, totalbytes) {
                        var percentage = actualbytes / totalbytes * 100;
                        if (percentage < 100) {
                          _percentage = percentage / 100;

                          setState(() {
                            downloadMessage =
                            'Downloading... ${percentage.floor()} %';
                          });
                        }
                        else {
                          setState(() {
                            downloadMessage = 'Done!';
                            inStorage = true;
                          });
                        }
                      }
                      );
                }
              },
              label: Text('Download'),
              icon: Icon(Icons.file_download),
            ),
            SizedBox(height: 32),
            Text(downloadMessage ?? '',
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium),
            Padding(
                padding: const EdgeInsets.all(8),
                child: LinearProgressIndicator(value: _percentage,)
            )
          ],
        ),
      );
    }
    else {


    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/work_table.png'),
    fit: BoxFit.fill

    )
    ),

    child:  InteractiveViewer(

        transformationController: controller,
        panEnabled: false,
        onInteractionEnd: (details){
          resetAnimation();
        },
        child: AspectRatio(

        aspectRatio: 1,
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: height*0.25),
          child: ClipRRect(
          //child: Image.asset('assets/images/Jer-jer.jpg',
          child: Image.file(File(localUrl),
          height: height * 0.5,
          fit: BoxFit.contain
          ),
          ),
        )
        ),
    )
    );

    }
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
