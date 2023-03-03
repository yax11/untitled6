import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alert/alert.dart';

class felCov extends StatefulWidget {
  const felCov({Key? key}) : super(key: key);

  @override
  State<felCov> createState() => _felCovState();
}

class _felCovState extends State<felCov> {

  var fellowshipCovenant = "";

  void getFellowshipCovenant() async{
    String response;
    try {
      response = await rootBundle.loadString('assets/texts/fellowship_covenant.txt');
      setState(() {
        fellowshipCovenant = response;
      });
    } catch (e) {
      print('Error reading file: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getFellowshipCovenant();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView(
              controller: ScrollController(),
              children: [
                const Center(
                  child: Text(
                      "THE FELLOWSHIP COVENANT",

                      style: TextStyle(
                          color: Color(0xaa012BB1),
                          overflow: TextOverflow.fade,
                          fontFamily: "Tahoma",
                          fontSize: 16.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                Text(
                  fellowshipCovenant,
                  // "THIS IS TEST",
                  style: const TextStyle(
                    color: Color(0xaa012BB1),
                    overflow: TextOverflow.fade,
                    fontFamily: "Times New Roman",
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                )
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Alert(message: 'Fellowship Covenant COPIED').show();
              Clipboard.setData(ClipboardData(text: fellowshipCovenant));
            },
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
            ),
            child: const Icon(
              Icons.copy,
              size: 30,
              color: Color(0xaa012BB1),
            ),
          )
        ],
      ),
    );
  }
}
