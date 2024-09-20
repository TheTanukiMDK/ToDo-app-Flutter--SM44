import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final ValueChanged<bool?> onChanged; //debe coincidir con lo que espera el Checkbox, checkbox espera un parametro tipo ValueChanged<bool?>?

  const TaskTile({ //su estado no cambia, agregamos const
  Key? key,
    required this.title,
    required this.isDone,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Checkbox(
        value: isDone,
        onChanged: onChanged,
      ),
    );
  }
}