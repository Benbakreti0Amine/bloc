import 'package:bloc/bloc.dart';
import 'package:bloc_project/models/todo_model.dart';


class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
  void addtodo(String name){
    if (name.isEmpty){
      addError('name can''t be empty');
      return;}
    final todo = Todo(name:name,createdAt:DateTime.now());
    final updatedTodos = List<Todo>.from(state)..add(todo); // Creates a new list that contains all the elements of the current state.
    //add the new todo item to this new list.
    // .. m3naha baghi ndiro another operation 3la new list

    //state.add(todo); hadi faux pcq 3ndna state tkoun equal l currentstate bi ma3na ki ndir add l state ghadi ttbedel w mb3da ndirlha emit kichgol emit thseb beli matbdel walou tsma ma dirch setstate()
    //t9dar dir  hak [...state] instead ma tcreyi new list
    emit(updatedTodos);
  }
  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}

