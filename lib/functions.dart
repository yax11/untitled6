import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart' as pp;
import 'package:untitled6/pages/anthem.dart';



class TextReader{

  TextReader(){
    print("Class created");
    // var link = Path();
    // Anthem(link);
    // var path;
    Path();
  }

  Path(){

    var f = rootBundle.loadString("ecwa_anthem.txt").then((value){
      print(value);
    });

    // pp.getApplicationDocumentsDirectory().then((value){
    //   // var path = value.path;
    //   // print(path);
    //   List path = value.path.split("app_flutter");
    //   var link = path[0]+"assets/";
    //
    //
    //   //
    // });
  }

  Anthem(String link){

    // var f = rootBundle.loadString("assets/texts/ecwa_anthem.txt").then((value){
    //   print(value);
    // });

    File('$link/ecwa_anthem.txt').readAsString().then((value){
    // File('assets/ecwa_anthem.txt').readAsString().then((value){
      print("FOUND");
    });

  }

}


// File('assets/ecwa_anthem.txt').readAsString().then((value){
// // File('assets/ecwa_anthem.txt').readAsString().then((value){
// print("FOUND");
// });