import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DailyDevotion extends StatefulWidget {
  const DailyDevotion({Key? key}) : super(key: key);

  @override
  State<DailyDevotion> createState() => _DailyDevotionState();
}

class _DailyDevotionState extends State<DailyDevotion> {
  String today = DateFormat('EEEE, d MMMM yyyy')
      .format(DateTime.now())
      .toString()
      .toUpperCase();


  bool condition = false;
  String text = "Tap the Refresh Button Above to Update";

  Future<String> readFromFirebaseStorage() async {
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final File file = File('${appDocDir.path}/devotional.txt');
    final Reference ref = FirebaseStorage.instance.ref().child('devotional.txt');

    try {
      final data = await ref.getData();

      if (data != null) {
        await file.writeAsBytes(data);
        final content = await file.readAsString();
        getLastSavedDevotional();
        return content;

      } else {
        final content = await file.readAsString();
        getLastSavedDevotional();
        return content;
        // throw Exception('No data returned from Firebase');
      }
    } catch (e) {
      // print('An error occurred while reading from Firebase: $e');
      return '';
    }
  }

  getLastSavedDevotional() async{
    setState(() {
      text = "";
      condition = false;
    });

    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final File file = File('${appDocDir.path}/devotional.txt');
    final content = await file.readAsString();
    await Future.delayed( const Duration(seconds: 1));

    setState(() {
      text = content;
      condition = true;
    });
  }

  @override
  void initState() {
    super.initState();
    readFromFirebaseStorage();
    // getLastSavedDevotional();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffe6eaf7),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Card(
        child: ExpansionTile(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide( color: Color(0xffe6eaf7), style: BorderStyle.none
            )
          ),
          title: const Center(child: Text("TODAY'S", style: TextStyle(color: Color(0xFF012BB1)),),),
          subtitle: const Center(child: Text("Daily Devotion", style: TextStyle(color: Color(0xFF012BB1)))),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffe6eaf7)

              )
                  ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        IconButton(onPressed: () async {
                          readFromFirebaseStorage();
                        },
                            icon: const Icon(Icons.update, color: Color(0xFF012BB1),)),

                        IconButton(onPressed: () async {
                          print("Shared");
                        },
                            icon: const Icon(Icons.share, color: Color(0xFF012BB1),)),

                      ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20))
                    ,
                    condition ?  Text(text) : const CircularProgressIndicator(),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}