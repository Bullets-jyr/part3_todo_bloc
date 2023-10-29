import '../vo_todo.dart';

// abstract class TodoEvent {}
sealed class TodoEvent {}

class TodoAddEvent extends TodoEvent {}

class TodoStatusUpdateEvent extends TodoEvent {
  final Todo updateTodo;

  TodoStatusUpdateEvent(this.updateTodo);
}

class TodoContentUpdateEvent extends TodoEvent {
  final Todo updateTodo;

  TodoContentUpdateEvent(this.updateTodo);
}

class TodoRemovedEvent extends TodoEvent {
  final Todo removedTodo;

  TodoRemovedEvent(this.removedTodo);
}