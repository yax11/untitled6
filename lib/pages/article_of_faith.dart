import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alert/alert.dart';
import 'package:share_plus/share_plus.dart';

class articleOfFaith extends StatefulWidget {
  const articleOfFaith({Key? key}) : super(key: key);

  @override
  State<articleOfFaith> createState() => _articleOfFaithState();
}

class _articleOfFaithState extends State<articleOfFaith> {
  var article_of_faith = "";

  void getArticleOfFaith() async {
    String response;
    try {
      response =
          await rootBundle.loadString('assets/texts/article_of_faith.txt');
      setState(() {
        article_of_faith = response;
      });
    } catch (e) {
      print('Error reading file: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getArticleOfFaith();
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
                  child: Text("ECWA ARTICLE OF FAITH AND PRACTICES\n",
                      style: TextStyle(
                          color: Colors.black,
                          overflow: TextOverflow.fade,
                          fontFamily: "Tahoma",
                          fontSize: 16.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  article_of_faith,
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
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe6eaf7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () async {
                      Alert(message: 'COPIED').show();
                      Clipboard.setData(
                          ClipboardData(text: article_of_faith));
                    },
                    icon: const Icon(
                      Icons.copy,
                      color: Color(0xFF012BB1),
                    )),
                IconButton(
                    onPressed: () async {
                      Share.share(article_of_faith);
                    },
                    icon: const Icon(
                      Icons.share,
                      color: Color(0xFF012BB1),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
