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

          const Padding(padding: EdgeInsets.all(5),),
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
                  Alert(message: 'Fellowship Covenant COPIED').show();
                  Clipboard.setData(ClipboardData(text: fellowshipCovenant));                },
                    icon: const Icon(Icons.copy, color: Color(0xFF012BB1),)
                ),

                IconButton(onPressed: () async {
                  print("Shared");
                },
                    icon: const Icon(Icons.share, color: Color(0xFF012BB1),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
