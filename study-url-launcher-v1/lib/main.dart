import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher_v2/utils.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          buttonTheme: ButtonThemeData(
        buttonColor: Color.fromARGB(255, 47, 110, 219), //  <-- light color
        textTheme:
            ButtonTextTheme.primary, //  <-- dark text for light background
      )),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Url Launcher v2.1.1',
            ),
            backgroundColor: Color.fromARGB(255, 9, 55, 134),
          ),
          body: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/j.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 180,
                left: 100,
                child: ElevatedButton(
                  onPressed: () => setState(() {
                    launchUniversalLinkIos(hello);
                  }),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 20, 138, 216)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 243, 240, 240))))),
                  child: Text('show Google.com'),
                ),
              ),
              Positioned(
                bottom: 90,
                left: 100,
                child: TextButton(
                  onPressed: () => setState(() {
                    launchUniversalLinkIos(hello2);
                  }),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 37, 62, 143)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 243, 240, 240))))),
                  child: Text('show google2'),
                ),
              )
            ],
          )),
    );
  }
}
