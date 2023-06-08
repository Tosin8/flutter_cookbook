// // ignore_for_file: unused_import

// import 'package:flutter/material.dart';
// import 'package:flutter_cookbook/gestures/inkwell_button.dart';
// import 'package:flutter_cookbook/images/cached_image.dart';
// import 'package:flutter_cookbook/images/placeholder_image.dart';
// import 'package:flutter_cookbook/lists/floating_appbar.dart';
// import 'package:flutter_cookbook/lists/horizontal_list.dart';
// import 'package:flutter_cookbook/lists/using_list.dart';
// import 'package:flutter_cookbook/navigation/hero_demo.dart';

// import 'gestures/dismiss_item.dart';
// import 'navigation/nav_newscreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const FirstRoute(),
//     );
//   }
// }

// To Do:
// 1. Creating a todo with each navigation with its own screen.
//
//

// 2.
// import 'package:flutter/material.dart';

// class Todo {
//   final String title;
//   final String description;

//   const Todo(this.title, this.description);
// }

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Passing Data',
//       home: TodosScreen(
//         todos: List.generate(
//           20,
//           (i) => Todo(
//             'Todo $i',
//             'A description of what needs to be done for Todo $i',
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class TodosScreen extends StatelessWidget {
//   const TodosScreen({super.key, required this.todos});

//   final List<Todo> todos;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Todos'),
//       ),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(todos[index].title),
//             // When a user taps the ListTile, navigate to the DetailScreen.
//             // Notice that you're not only creating a DetailScreen, you're
//             // also passing the current todo through to it.
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailScreen(todo: todos[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   // In the constructor, require a Todo.
//   const DetailScreen({super.key, required this.todo});

//   // Declare a field that holds the Todo.
//   final Todo todo;

//   @override
//   Widget build(BuildContext context) {
//     // Use the Todo to create the UI.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }

//3.
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['titile'],
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fetch Data Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Fetch Data Example'),
          ),
          body: Center(
            child: FutureBuilder<Album>(
              future: futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
              },
            ),
          ),
        ));
  }
}
