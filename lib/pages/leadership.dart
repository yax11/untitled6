import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:alert/alert.dart';

copyAndAlert(data) {
  Clipboard.setData(ClipboardData(text: "$data"))
      .then((value) => Alert(message: "$data COPIED").show());
}

class LeaderShip extends StatefulWidget {
  LeaderShip({Key? key}) : super(key: key);

  @override
  State<LeaderShip> createState() => _LeaderShipState();
}

class _LeaderShipState extends State<LeaderShip> {
  final Map<String, String> myMap = {
    'Rev. Tanimu Danasabe': 'Chairman(Senior Pastor)\n08081988413\n08057549980',
    'Pst. Elisha Dagami Musa': 'Vice Chairman(Associate Pastor)\n08064998145',
    'Eld. Titus N. Bitrus': 'Secretary\n08055337438',
    'Eld. Christopher Ishaya': 'Financial Secretary\n07030803223',
    'Eld. Yusuf Ahmadu': 'Treasurer\n08138378832',
    'Eld. Denis T. Yaji': 'Worship\n08065551752',
    'Eld. Ibrahim Adamu': 'Evangelism\n08069515482',
    'Eld. Musa I. Kajahs': 'Works\n08066519985',
    'Eld. Shawulu K. Gata': 'Welfare\n08035072554',
    'Eld. Caleb Duniya': 'CEE\n08027838944',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(6.0)),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffe6eaf7)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const Expanded(
                    child: Text(
                  "ECWA Goodnews Durumi II, P.O Box 5813, Garki Abuja",
                  style: TextStyle(
                    color: Color(0xff012bb1),
                  ),
                  textAlign: TextAlign.center,
                )
                ),
                IconButton(
                  color: Color(0xff012bb1),
                  onPressed: () {
                    launchUrl(
                        Uri(scheme: 'https', path: 'goo.gl/maps/1pRk6xUQuUprFNpn7'));
                  },
                  icon: const Icon(
                    Icons.map_outlined,
                  ),
                ),

              ],
            ),
          ),
        ),        const Padding(padding: EdgeInsets.all(6.0)),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffe6eaf7)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                    child: Text(
                  "ecwagoodnewsdurumi2@yahoo.com",
                  style: TextStyle(
                    color: Color(0xff012bb1),
                  ),
                  textAlign: TextAlign.center,
                ))
              ],
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(6.0)),
        Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffe6eaf7)),
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
                child: Text(
              "ecwagoodnewsdurumi2@gmail.com",
              style: TextStyle(
                color: Color(0xff012bb1),
              ),
              textAlign: TextAlign.center,
            ))
          ],
        ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(6.0)),
        Expanded(
          child: ListView.builder(
            itemCount: myMap.length,
            itemBuilder: (BuildContext context, int index) {
              final String key = myMap.keys.elementAt(index);
              final String value = myMap[key]!;
              final String phone = value.substring(value.length - 11);

              return Card(
                child: ListTile(
                  isThreeLine: true,
                  focusColor: const Color.fromARGB(250, 200, 0, 0),
                  hoverColor: const Color.fromARGB(250, 200, 0, 0),
                  mouseCursor: MouseCursor.defer,
                  title: Text(key),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(value),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          color: const Color(0xff012bb1),
                          onPressed: () {
                            copyAndAlert(phone);
                          },
                          icon: const Icon(Icons.copy),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          color: const Color(0xff012bb1),
                          onPressed: () {
                            launchUrl(Uri(scheme: 'tel', path: phone));
                          },
                          icon: const Icon(Icons.call),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
