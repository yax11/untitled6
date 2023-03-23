import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import './pages/home.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';


Future<String> getBibleStudyManualFromFirebaseStorage() async {
  String fileName = "bible_study_manual.pdf";
  final Reference ref =
  FirebaseStorage.instance.ref().child(fileName);

  final appDocDir = await getApplicationDocumentsDirectory();
  final file = File('${appDocDir.path}/$fileName');
  await ref.writeToFile(file);

  try {
    final data = await ref.getData();
    if (data != null) {
      await file.writeAsBytes(data);
      return 'ok';
    } else {
      return 'no';
      // throw Exception('No data returned from Firebase');
    }
  } catch (e) {
    // print('An error occurred while reading from Firebase: $e');
    return 'error';
  }
}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  getBibleStudyManualFromFirebaseStorage();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ECWA Durumi II',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(),
    ),
    home: const MainHome(),
  ));
}

class MyCustomTransitions extends StatelessWidget {
  const MyCustomTransitions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, SlideTransition1(SecondPage())),
              child: const Text('TAP TO VIEW SLIDE ANIMATION 1')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, SlideTransition2(SecondPage())),
              child: const Text('TAP TO VIEW SLIDE ANIMATION 2')),
        ],
      ),
    );
  }
}

class SlideTransition1 extends PageRouteBuilder {
  final Widget page;

  SlideTransition1(this.page)
      : super(
            pageBuilder: (context, animation, anotherAnimation) => page,
            transitionDuration: Duration(milliseconds: 2000),
            reverseTransitionDuration: Duration(milliseconds: 100),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  parent: animation,
                  reverseCurve: Curves.fastOutSlowIn);
              return SlideTransition(
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(animation),
                child: page,
              );
            });
}

class SlideTransition2 extends PageRouteBuilder {
  final Widget page;

  SlideTransition2(this.page)
      : super(
            pageBuilder: (context, animation, anotherAnimation) => page,
            transitionDuration: Duration(milliseconds: 2000),
            reverseTransitionDuration: Duration(milliseconds: 1000),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  parent: animation,
                  reverseCurve: Curves.fastOutSlowIn);
              return SlideTransition(
                position:
                    Tween(begin: const Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                        .animate(animation),
                textDirection: TextDirection.rtl,
                child: page,
              );
            });
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Slide Transition'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Clipboard.setData(const ClipboardData(text: "Hi I am YAX"));
        },
        child: const Icon(Icons.account_balance_sharp),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: '1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: '2'),
        ],
      ),
    );
  }
}
