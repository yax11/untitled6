
import 'package:flutter/material.dart';
import './leadership.dart' show copyAndAlert;

class ChurchAccounts extends StatelessWidget {
  const ChurchAccounts({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        controller: ScrollController(
        ),
        children: [
          const Center(
            child: Text(
                "CHURCH BANK ACCOUNTS",

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
          Column(
            children: [
              Card(
                child: ListTile(
                  isThreeLine: true,
                  focusColor: const Color.fromARGB(250, 200, 0, 0),
                  hoverColor: const Color.fromARGB(250, 200, 0, 0),
                  mouseCursor: MouseCursor.defer,
                  title: const Text("For Tithes"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 4,
                        child: Text(
                          "Name: ECWA Goodnews Church Durumi 2\n"
                              "Bank: Access Bank\n"
                              "Account No.: 0046094032\n",
                        style: TextStyle(fontSize: 16),),),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            color: const Color(0xff012bb1),
                            onPressed: () {
                              copyAndAlert('0046094032');
                            },
                            icon: const Icon(Icons.copy)
                        ),
                      ),
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
                  title: const Text("Trust Fund Account"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 4,
                        child: Text(
                          "Name: ECWA Goodnews Church Durumi 2\n"
                              "Bank: Zenith Bank\n"
                              "Account No.: 1016606055\n",
                        style: TextStyle(fontSize: 16),),),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            color: const Color(0xff012bb1),
                            onPressed: () {
                              copyAndAlert('1016606055');
                            },
                            icon: const Icon(Icons.copy)
                        ),
                      ),
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
                  title: const Text("CHURCH PROJECT ACCOUNT"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 4,
                        child: Text(
                          "Name: ECWA Goodnews Durumi 2\n"
                              "Bank: Zenith Bank\n"
                              "Account No.: 1222815283\n",
                        style: TextStyle(fontSize: 16),),),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                            color: const Color(0xff012bb1),
                            onPressed: () {
                              copyAndAlert('1222815283');
                            },
                            icon: const Icon(Icons.copy)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

