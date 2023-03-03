import 'package:flutter/material.dart';

class Weekly_Act extends StatelessWidget {
  const Weekly_Act({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      trackVisibility: true,
      // controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal:30.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Sunday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Adult Sunday School"), flex: 3,),
                          Expanded(child: Text("7:30AM"), flex: 1,),

                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Sunday Service"), flex: 3,),
                          Expanded(child: Text("8:15PM"), flex: 1,),

                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Baptism class"), flex: 3,),
                          Expanded(child: Text("11:00AM"), flex: 1,),

                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Boys' Brigade"), flex: 3,),
                          Expanded(child: Text("4:00PM"), flex: 1,),

                        ],
                      )
                      ),
                    ],
                  ),

                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Monday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Youth Fellowship"), flex: 3,),
                          Expanded(child: Text("5:00PM"), flex: 1,),

                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Victory Gospel Band"), flex: 3,),
                          Expanded(child: Text("7:00PM"), flex: 1,),

                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Prayer Band"), flex: 3,),
                          Expanded(child: Text("7:00PM"), flex: 1,),

                        ],
                      )
                      ),
                    ],
                  ),

                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Tuesday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Bible Study"), flex: 3,),
                          Expanded(child: Text("5:00PM"), flex: 1,),
                        ],
                      )
                      ),
                    ],
                  ),

                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Wednesday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Mid-week prayer"), flex: 3,),
                          Expanded(child: Text("5:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Choir"), flex: 3,),
                          Expanded(child: Text("6:30PM"), flex: 1,)
                        ],
                      )
                      ),
                    ],
                  ),

                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Thursday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Women Fellowship"), flex: 3,),
                          Expanded(child: Text("4:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Sisters Fellowship"), flex: 3,),
                          Expanded(child: Text("4:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Men Fellowship"), flex: 3,),
                          Expanded(child: Text("5:0PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Drama"), flex: 3,),
                          Expanded(child: Text("6:00PM"), flex: 1,)
                        ],
                      )
                      ),
                    ],
                  ),

                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Friday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Women Fellowship"), flex: 3,),
                          Expanded(child: Text("4:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Children Teachers"), flex: 3,),
                          Expanded(child: Text("4:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Evangelism Unit"), flex: 3,),
                          Expanded(child: Text("5:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Victory Gospel Band"), flex: 3,),
                          Expanded(child: Text("6:00PM"), flex: 1,)
                        ],
                      )
                      ),
                    ],
                  ),

                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 20),
                    textColor: Color(0xff012bb1),
                    iconColor: Color(0xff012bb1),
                    collapsedTextColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    title: Text('Saturday'),
                    subtitle: Text(''),
                    children: <Widget>[
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Church Games"), flex: 3,),
                          Expanded(child: Text("5:30AM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Boys' Brigade"), flex: 3,),
                          Expanded(child: Text("4:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Victory Gospel Band"), flex: 3,),
                          Expanded(child: Text("5:00PM"), flex: 1,)
                        ],
                      )
                      ),
                      ListTile(title: Row(
                        children: const [
                          Expanded(child: Text("Choir"), flex: 3,),
                          Expanded(child: Text("6:00PM"), flex: 1,)
                        ],
                      )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Text('test')..............Another widget can be here
          ],
        ),
      ),
    );
  }
}
