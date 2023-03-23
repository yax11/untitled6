import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alert/alert.dart';
import 'package:share_plus/share_plus.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  var history = "";

  void getHistory() async{
    String response;
    try {
      response = await rootBundle.loadString('assets/texts/history.txt');
      setState(() {
        history = response;
      });
    } catch (e) {
      print('Error reading file: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getHistory();
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
                      "ECWA HISTORY",

                      style: TextStyle(
                          color: Colors.black,
                          overflow: TextOverflow.fade,
                          fontFamily: "Tahoma",
                          fontSize: 16.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
                Text(
                  history,
                  // "THIS IS TEST",
                  style: const TextStyle(
                    color: Colors.black,
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
                  Alert(message: 'History COPIED').show();
                  Clipboard.setData(ClipboardData(text: history));                },
                    icon: const Icon(Icons.copy, color: Color(0xFF012BB1),)
                ),

                IconButton(onPressed: () async {
                  Share.share(history);
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
