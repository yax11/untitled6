import 'package:flutter/material.dart';
import 'package:uc_pdfview/uc_pdfview.dart';
import 'package:share_plus/share_plus.dart';

class PDFScreen extends StatefulWidget {
  final String? path;

  const PDFScreen({Key? key, this.path}) : super(key: key);

  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xaa012bb1),
      appBar: AppBar(
        leading: const BackButton(color: Color(0xFF012BB1)),
        backgroundColor: Colors.white,
        title: const Text(
          "Bible Study Manual",
          style: TextStyle(color: Color(0xFF012BB1)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(image: AssetImage('assets/ecwa_no_bg.png')),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: UCPDFView(
                    filePath: widget.path,
                    // pageFling: false,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffe6eaf7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () async {
                          // readFromFirebaseStorage();
                        },
                        icon: const Icon(Icons.update, color: Color(0xFF012BB1)),
                      ),
                      IconButton(
                        onPressed: () async {
                          Share.share('check out my website https://example.com');
                        },
                        icon: const Icon(Icons.share, color: Color(0xFF012BB1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
