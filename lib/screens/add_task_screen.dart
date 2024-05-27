import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                // fontWeight: FontWeight.w300
            ),
          ),
          TextField(
            cursorColor: Colors.lightBlueAccent,
            decoration: InputDecoration(
              hintText: 'Enter your task...',
                hintStyle: TextStyle(fontSize: 12.0),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2)
              ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2)
                )
              // border: UnderlineInputBorder(
              //   borderSide: BorderSide(color: Colors.lightBlueAccent)
              // )
            ),
            autofocus: true,
            style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(ContinuousRectangleBorder())
            ),
            onPressed: () {},
            child: Text('Add',),
          ),
        ],
      ),
    );
  }
}
