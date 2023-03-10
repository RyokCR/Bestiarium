import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

Future<void> download(String url) async {
  final response = await http.get(Uri.parse(url));

  //Get image name
  final imageName = path.basename(url);
  //Get the document directory path
  final appDir = await path_provider.getApplicationDocumentsDirectory();

  print(appDir);
  // This is the saved image path
  // You can use it to display the saved image later
  if (appDir != null){
    final localPath = path.join(appDir.path, imageName);
    print(localPath);
  //Downloading
  final imageFile = File(localPath);
  await imageFile.writeAsBytes(response.bodyBytes);
  }
}


Future<void> dio_download(String url) async{
  //var dir = await path_provider.getApplicationDocumentsDirectory();
  var dir = await path_provider.getExternalStorageDirectory();

  Dio dio = Dio();
  dio.download(
      url,
      '${dir?.path}/gerbobird.jpg',
      onReceiveProgress: (actualbytes, totalbytes){
        /*setState(() {

        })*/
      }
  );

}