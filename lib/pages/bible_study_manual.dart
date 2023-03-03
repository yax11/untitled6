import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uc_pdfview/uc_pdfview.dart';

void main() => runApp(Bible_study_manul());

class Bible_study_manul extends StatefulWidget {
  @override
  _Bible_study_manulState createState() => _Bible_study_manulState();
}

class _Bible_study_manulState extends State<Bible_study_manul> {
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    fromAsset('assets/demo-link.pdf', 'demo.pdf').then((f) {
      setState(() {
        pathPDF = f.path;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => PDFScreen(path: pathPDF),
        //   ),
        // );
      });
    });
  }

  Future<File> fromAsset(String asset, String filename) async {
    // To open from assets, you can copy them to the app storage folder, and the access them "locally"
    Completer<File> completer = Completer();

    try {
      var dir = await getApplicationDocumentsDirectory();
      print(dir);
      File file = File("${dir.path}/$filename");
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PDF View',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(child: Builder(
          builder: (BuildContext context) {
            return Column(
              children: <Widget>[
                TextButton(
                  child: const Text("Open PDF"),
                  onPressed: () {
                    if (pathPDF.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PDFScreen(path: pathPDF),
                        ),
                      );
                    }
                  },
                ),
              ],
            );
          },
        )),
      ),
    );
  }
}

class PDFScreen extends StatefulWidget {
  final String? path;

  PDFScreen({Key? key, this.path}) : super(key: key);
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
  final Completer<PDFViewController> _controller =
  Completer<PDFViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xaa012bb1),
      appBar: AppBar(
        leading: const BackButton(
            color: Color(0xFF012BB1)
        ),
        backgroundColor: Colors.white,
        title: const Text("Bible Study Manual", style: TextStyle(color: Color(0xFF012BB1)),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
            icon: const Image(image: AssetImage('assets/ecwa_no_bg.png'),),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          UCPDFView(
              filePath: widget.path
          ),
        ],
      ),
    );
  }
}
