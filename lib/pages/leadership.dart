import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:alert/alert.dart';

final Uri _url = Uri.parse('tel:123');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

copyAndAlert(data){
  Clipboard.setData(
      ClipboardData(text: "$data"))
      .then((value) => Alert(message: "$data COPIED").show());
}


class LeaderShip extends StatelessWidget {
  final ScrollController _firstController = ScrollController();

  LeaderShip({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        controller: ScrollController(
        ),
        children:  [
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Rev. Tanimu Danasabe"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 4,child: Text("Chairman(Senior Pastor)\n08081988413\n08057549980"),),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: const Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08057549980');
                        },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: const Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08081988413'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Pst. Elisha Dagami Musa"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 4,child: Text("Vice Chairman(Associate Pastor)\n08064998145"),),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: const Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08064998145');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08064998145'));},
                      icon: const Icon(Icons.call)
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: const Color.fromARGB(250, 200, 0, 0),
            hoverColor: const Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: const Text("Eld. Titus N. Bitrus"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(flex: 4,child: Text("Secretary\n08055337438"),),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: const Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08055337438');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: const Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08055337438'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Christopher Ishaya"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Financial Secretary\n07030803223"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('07030803223');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '07030803223'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Yusuf Ahmadu"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Treasurer\n08138378832"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08138378832');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08138378832'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Denis T. Yaji"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Worship\n08065551752"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08065551752');
                        },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08065551752'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Ibrahim Adamu"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: Text("Evangelism\n08069515482"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08069515482');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08069515482'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Musa I. Kajahs"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Works\n08066519985"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08066519985');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08066519985'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Shawulu K. Gata"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("Welfare\n08035072554"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08035072554');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08035072554'));},
                      icon: const Icon(Icons.call)
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            isThreeLine: true,
            focusColor: Color.fromARGB(250, 200, 0, 0),
            hoverColor: Color.fromARGB(250, 200, 0, 0),
            mouseCursor: MouseCursor.defer,
            title: Text("Eld. Caleb Duniya"),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: Text("CEE\n08027838944"), flex: 4,),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {
                        copyAndAlert('08027838944');
                      },
                      icon: const Icon(Icons.copy)
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      color: Color(0xff012bb1),
                      onPressed: () {launchUrl(Uri(scheme: 'tel', path: '08027838944'));},
                      icon: const Icon(Icons.call)
                  ),
                )
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }
}

