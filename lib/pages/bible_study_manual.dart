import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uc_pdfview/uc_pdfview.dart';


class PDFScreen extends StatefulWidget {
  final String? path;

  const PDFScreen({Key? key, this.path}) : super(key: key);
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {


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
            filePath: widget.path,
            // pageFling: false,
          ),
        ],
      ),
    );
  }
}

