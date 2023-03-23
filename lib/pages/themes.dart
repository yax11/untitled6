import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alert/alert.dart';
import 'package:share_plus/share_plus.dart';

class Themes extends StatefulWidget {
  const Themes({Key? key}) : super(key: key);

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {

  var themes = "";

  final List<Map<String, String>> data = [
    {'Year': '2023', 'Theme': 'Occupy till I come. Luke 19:13'},
    {'Year': '2022', 'Theme': 'Look, He is Coming with the Clouds. Revelation 1:7'},
    {'Year': '2021', 'Theme': 'Christ in you, the hope of glory. Colossians 1:27'},
    {'Year': '2020', 'Theme': 'Not by might nor by power, but by my Spirit. Zechariah 4:6'},
    {'Year': '2019', 'Theme': 'Behold, I am doing a new thing! Isaiah 43:19-21'},
    {'Year': '2018', 'Theme': 'Joy in suffering. 1 Peter 4:13'},
    {'Year': '2017', 'Theme': 'A generation that knew not the God. Judges 2:10'},
    {'Year': '2016', 'Theme': 'I looked for a man. Ezekiel 22:30'},
    {'Year': '2015', 'Theme': 'For I am persuaded. Romans 8:38'},
    {'Year': '2014', 'Theme': 'Preach the word... 1 Tim 4:2'},
    {'Year': '2013', 'Theme': 'I want to know Christ. Philippians 3:10'},
    {'Year': '2012', 'Theme': 'Fellow workers of the truth. 3 John 1:8'},
    {'Year': '2011', 'Theme': "For we are God's workmanship. Ephesians 2:10"},
    {'Year': '2010', 'Theme': "We walk by Faith and not by sight. 2 Corinthians 5:17"},
    {'Year': "2009", "Theme": "Vessels of honor. 2 Timothy 2:19"},
    {"Year": "2008", "Theme": "Living a Holy life... Hebrews 12:14"},
    {"Year": "2007", "Theme": "Have you heard? John 4:29"},
    {"Year": "2006", "Theme": "Walking in the light. 1 John 1:7"},
    {"Year": "2005", "Theme": "Return unto me. Malachi 3:17"},
    {"Year": "2004", "Theme": "Where are you? Genesis 3:9"},
    {"Year": "2003", "Theme": "Bear fruit that will last John 15:16."},
    {"Year": "2002", "Theme": "That I may know him. Philippians 3:10"},
    {"Year": "2001", "Theme": "Who shall separate us from the love of Christ? Romans 8:35"},
    {"Year": "2000", "Theme": "Make the most of every opportunity. Ephesians 5:16"},
    {"Year": "1999", "Theme": "Go and Serve. 2 Timothy 2:2"},
    {"Year": "1998", "Theme": "Equipping the Saints. Ephesians 4:15"},
    {"Year": "1997", "Theme": "Resist the Devil. James 4:7"}
  ];


  void getThemes() async{
    String response;
    try {
      response = await rootBundle.loadString('assets/texts/history.txt');
      setState(() {
        themes = response;
      });
    } catch (e) {
      // print('Error reading file: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    getThemes();
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
                SingleChildScrollView(
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Year')),
                      DataColumn(label: Text('Theme')),
                    ],
                    rows:
                    data.map((row) => DataRow(cells:[
                      DataCell(Text(row['Year']!)),
                      DataCell(Text(row['Theme']!)),
                    ])).toList(),
                  ),
                ),
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
                  Alert(message: 'Themes COPIED').show();
                  Clipboard.setData(ClipboardData(text: themes));                },
                    icon: const Icon(Icons.copy, color: Color(0xFF012BB1),)
                ),

                IconButton(onPressed: () async {
                  Share.share(themes);
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
