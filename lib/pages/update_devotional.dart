import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class devotionalUpdateField extends StatefulWidget {
  devotionalUpdateField({Key? key}) : super(key: key);

  @override
  State<devotionalUpdateField> createState() => _devotionalUpdateFieldState();
}

class _devotionalUpdateFieldState extends State<devotionalUpdateField> {
  var txt = '';

  Future<String> updateFromFirebaseStorage() async {
    try {
      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final File file = File('${appDocDir.path}/tmp_devotional.txt');
      await file.writeAsString(txt.replaceAll('*', ''));

      // await file.writeAsString(devotionalController.text);

      // Get a reference to the 'devotional.txt' file in Firebase Cloud Storage
      // final Reference ref =
      //     FirebaseStorage.instance.ref().child('devotional.txt');

      // Upload the content of 'tmp_devotional.txt' to 'devotional.txt'
      // final UploadTask task = ref.putFile(file);

      // Wait for the upload operation to complete
      // await task.onComplete;
      print("SUCCESSFUL");
      return 'Upload successful';
    } catch (e) {
      print("FAILURE");
      return 'Upload failed: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    getLastSavedDevotional() async {
      setState(() {
        txt = "";
      });

      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final File file = File('${appDocDir.path}/devotional.txt');
      final content = await file.readAsString();
      controller.text = content;
      setState(() {
        txt = "";
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Color(0xFF012BB1)),
        backgroundColor: Colors.white,
        title: const Text(
          "Update Daily Devotional",
          style: TextStyle(color: Color(0xFF012BB1)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/ecwa_no_bg.png'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Flexible(
            fit: FlexFit.tight,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text',
              ),
              maxLines: null,
              onChanged: (value) {
                txt = value;
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffe6eaf7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () async {
                getLastSavedDevotional();
              },
              icon: const Icon(Icons.update, color: Color(0xFF012BB1)),
            ),
            IconButton(
              onPressed: () async {
                txt = "";
                controller.clear();
                setState(() {
                  txt = "";
                  controller.clear();
                });
              },
              icon: const Icon(Icons.clear, color: Color(0xFF012BB1)),
            ),
            IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.upload, color: Color(0xFF012BB1)),
            ),
          ],
        ),
      ),
    );
  }
}
