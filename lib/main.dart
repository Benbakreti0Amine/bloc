// import 'package:bloc_project/todoapp/addtodo.dart';
// import 'package:bloc_project/todoapp/cubit/todo_cubit.dart';
// import 'package:bloc_project/todoapp/todo.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => TodoCubit(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         initialRoute: '/',
//         routes: {
//           '/': (_) => const TodoList(),
//           '/add-todo': (_) => const AddTodoPage(),
//         },
//       ),
//     );
//   }
// }

import 'package:bloc_project/login_signup_app/login_screen.dart';
import 'package:bloc_project/login_signup_app/pallete.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}

