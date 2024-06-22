import 'package:bloc_project/todoapp/cubit/todo_cubit.dart';
import 'package:bloc_project/todoapp/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
       body:BlocBuilder<TodoCubit, List<Todo>>(
              builder: (context, todo) {
                print(todo.length);
                return ListView.builder(
                  itemCount: todo.length,              
                  itemBuilder: (BuildContext context, int index) {
                    String item = todo[index].name;
                    return ListTile(title: Text(item),);
                  },
                );
              },
            ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}