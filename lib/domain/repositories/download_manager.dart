


import 'package:dio/dio.dart';

class DownloadsManager {

  static Dio _dio = Dio();


  static Future download_file(entry, String url, String localUrl, ProgressCallback onReceiveProgress) async {

    //String downloadMessage = 'Initializing...';
    //double _percentage = 0;


    await _updateSizeDB(entry);

    _dio.download(
        url,
        //'${dir?.path}/gerbobird.jpg',
        localUrl,
        onReceiveProgress: onReceiveProgress/*(actualbytes, totalbytes) {
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
        }*/
    );
  }

  static _updateSizeDB(entry, ) async{
    var response = await _dio.head(entry.url);
    int totalBytes = int.parse(response.headers.value('content-length')!);

    entry.fileTotalSize = totalBytes;
    entry.save();
  }

}