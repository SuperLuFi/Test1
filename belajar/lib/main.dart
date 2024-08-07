import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoChatHomePage(),
    );
  }
}


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //color: const Color.fromARGB(255, 255, 255, 255),
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         hoverColor: Colors.blue,
//         colorSchemeSeed: Color.fromARGB(255, 255, 255, 255),
//         useMaterial3: false,
//         brightness: Brightness.values[0],
//         //primaryColor: Color.fromRGBO(255, 255, 255, 0),
//       ),
//       home: const MyHomePage(
//         title: 'Flutter Demo Home Page',
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = -1;
//   String A = 'Generate nama baru';

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   Future<void> karyawan() async {
//     final response =
//         await http.get(Uri.parse('http://103.161.184.166:3000/api/user'));
//     A = (jsonDecode(response.body)['data'][_counter]['name']);
//   }

//   void generate() {
//     if (_counter < 7) {
//       _counter = _counter;
//     } else {
//       _counter = -1;
//     }
//     karyawan();
//     _incrementCounter();
//     //print(_counter);
//     //print(A);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Generate nama member?',
//             ),
//             Text(
//               A,
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             const Text(
//               'Gunakan tanda + untuk generate nama baru',
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: generate,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


// Test Widget text
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const Center(
//       child: Text(
//         'Hello Flutter, world!',
//         textDirection: TextDirection.rtl,
//         selectionColor: Colors.red,
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.blue,
//         ),
//       ),
//     ),
//   );  
// }
