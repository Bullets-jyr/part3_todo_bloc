import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/screen/main/tab/todo/w_todo_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class TodoList extends StatelessWidget with TodoDataProvider {
// class TodoList extends GetView<TodoDataHolder> { : get: ^4.6.5 기준, 추천하지 않습니다.
  TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => todoData.todoList.isEmpty // controller.todoList.isEmpty
        ? '할일을 작성해보세요.'.text.size(30).makeCentered()
        : Column(
            children: todoData.todoList.map((e) => TodoItem(e)).toList(), //controller.todoList.map((e) => TodoItem(e)).toList(),
          ));
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
