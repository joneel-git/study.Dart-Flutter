// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './todo.dart';
void main() {


  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<MyClass>(
      create: (context) => MyClass(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
      
            // parent widget of MyHomePage is ChangeNotifierProvider
            primarySwatch: Colors.deepPurple,
          ),
          home: MyHomePage(title: 'Flutter Demo Application'),
        ),
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  
    //this is myclass variable instance shortcut
    //shortcut for context.read<MyClass>();
    final myclass = context.read<MyClass>(); 

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 200, 200),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you have pressed button this many times',
            style: TextStyle(
              color: Colors.indigo[900],
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
            Consumer<MyClass>(
              builder: (context, value, child) {
                return Text('${myclass.i}',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                myclass.increment();
              },
              child: Icon(Icons.add),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
               splashColor: Colors.red,
              onPressed: () {
                myclass.decrement();
              },
              child: Icon(Icons.remove)
            ),
          ),
        ],
      ),
      );
  }
}
