import 'package:bloc/bloc.dart';
import 'package:bloc_project/models/todo_model.dart';


class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
  void addtodo(String name){
    final todo = Todo(name:name,createdAt:DateTime.now());
    final updatedTodos = List<Todo>.from(state)..add(todo); // Creates a new list that contains all the elements of the current state.
    //add the new todo item to this new list.
    // .. m3naha baghi ndiro another operation 3la new list
    print(updatedTodos);
    emit(updatedTodos);
  }

}
