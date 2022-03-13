
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class FileServices{




  static final FileServices _instance = FileServices._internal();

  FileServices._internal();

  factory FileServices()=> _instance;


  Future<String> get myAppDirectory async{
    Directory  directory  = await getApplicationDocumentsDirectory();
    return  directory.path;
  }


  Future<String> get path async {
    final path = await myAppDirectory;
    return path;
  }

  void saveFile(String fileName,String data) async{
    final pth = await path;
    File file = File('$pth/$fileName');
    file.writeAsString(data);
  }


  getFile(String fileName)async{

    final pth = await path;
    File file = File('$pth/$fileName');
    String content = '';
    if (await file.exists()) {
      try{
        content = await file.readAsString();
      }catch (e){
        print(e);
      }
    }
    return content;

  }





}