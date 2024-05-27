import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}
class _TaskListState extends State<TaskList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskItem(title: 'Buy rice',
            isChecked: isChecked,
            onChanged: (value){
              setState(() {
                isChecked = value!;
              });
            }),
        TaskItem(title: 'Buy coffe',
            isChecked: isChecked,
            onChanged: (value){
              setState(() {
                isChecked = value!;
              });
            }),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  late final String title;
  late final bool isChecked;
  late final ValueChanged onChanged;

  TaskItem ({
    required this.title,
    required this.isChecked,
    required this.onChanged,
});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: onChanged
      ),
    );
  }
}


//ListTile(
//           title: Text('BuyMilk',
//             style: TextStyle(
//               decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
//             ),
//           ),
//           trailing: Checkbox(
//               activeColor: Colors.lightBlueAccent,
//               value: isChecked,
//               onChanged: (bool? value){
//                 setState(() {
//                   isChecked = value!;
//                 });
//               }
//           ),
//         ),