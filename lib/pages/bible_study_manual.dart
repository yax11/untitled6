import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'dart:io';

/// Represents Homepage for Navigation
class PDFScreen extends StatefulWidget {
  const PDFScreen({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<PDFScreen> {

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  late String _filePath;
  late int _currentPageNumber;

  @override
  void initState() {
    super.initState();
    _getFilePath();
    _currentPageNumber = 0;
  }

  PdfViewerController PDFController = PdfViewerController();

  Future<void> _getFilePath() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    const fileName = 'bible_study_manual.pdf';
    final filePath = '${appDocDir.path}/$fileName';
    setState(() {
      _filePath = filePath;
    });
  }

  updatePageNumber(){
    int num = PDFController.pageNumber;
    setState(() {
      _currentPageNumber = num;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(color: Color(0xFF012BB1)),
        backgroundColor: Colors.white,
        title: const Text(
          "Bible Study Manual",
          style: TextStyle(color: Color(0xFF012BB1)),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Image(image: AssetImage('assets/ecwa_no_bg.png')),
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
                },

                icon: const Icon(
                  Icons.update,
                  color: Color(0xFF012BB1),
                )),


            Text(
              _currentPageNumber.toString(),
              style: const TextStyle(
                color: Color(0xFF012BB1),
              ),
            ),

            IconButton(
                onPressed: () async {
                  _pdfViewerKey.currentState?.openBookmarkView();
                },
                icon: const Icon(
                  Icons.bookmark_add_outlined,
                  color: Color(0xFF012BB1),
                )),
          ],
        ),
      ),
      body: SfPdfViewer.file(
        File(_filePath),
        key: _pdfViewerKey,
        controller: PDFController,
        onPageChanged: (change) => updatePageNumber(),
      ),
    );
  }
}

