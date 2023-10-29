import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/bloc/todo_bloc_state.dart';
import 'package:fast_app_base/data/memory/todo_bloc.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
// class TodoList extends GetView<TodoDataHolder> { : get: ^4.6.5 기준, 추천하지 않습니다.
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoBlocState>(builder: (context, state) {
      return state.todoList.isEmpty // controller.todoList.isEmpty
          ? '할일을 작성해보세요.'.text.size(30).makeCentered()
          : Column(
              children: state.todoList
                  .map((e) => TodoItem(e))
                  .toList(), //controller.todoList.map((e) => TodoItem(e)).toList(),
            );
    });
  }
}

// class TodoList extends StatelessWidget {
//   TodoList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<TodoDataHolder>(
//       builder: (todoData) {
//         return todoData.todoList.isEmpty // controller.todoList.isEmpty
//             ? '할일을 작성해보세요.'.text.size(30).makeCentered()
//             : Column(
//                 children: todoData.todoList
//                     .map((e) => TodoItem(e))
//                     .toList(), //controller.todoList.map((e) => TodoItem(e)).toList(),
//               );
//       },
//     );
//   }
// }
