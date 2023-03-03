import 'package:flutter/material.dart';

class OurOrganogram extends StatelessWidget {
  const OurOrganogram({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        controller: ScrollController(
        ),
        children: [
          Center(
            child: Text(
                "OUR ORGANOGRAM",

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
        ],
      ),
    );
  }
}

