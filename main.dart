import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(  // #1 Root Material app: sets app theme and first screen

    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: It builds  the app structure  
    appBar: AppBar(title: const Text('All Widgets')),// #3 AppBar: It builds for the title at the top bar
    body: Center( //#7 Center: To center the child
      child: Container( // #8 Container: It adds the padding 
        padding: const EdgeInsets.all(20),
        child: Column( //#6 Column: Use to arrange the children vertically 
          children: [
            Row( //#5 Row: Use to arrange the children horizontally
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Text('Flutter'): It displays the text next to the icon  
              ],
            ),
          ],
        ),
      ),
    ),
  );
}