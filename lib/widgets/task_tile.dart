import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final ValueChanged<bool?> onChanged; //debe coincidir con lo que espera el Checkbox, checkbox espera un parametro tipo ValueChanged<bool?>?
  final VoidCallback onDelete;

  const TaskTile({ //su estado no cambia, agregamos const
  Key? key,
    required this.title,
    required this.isDone,
    required this.onChanged,
    required this.onDelete
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Checkbox(
        value: isDone,
        onChanged: onChanged,
      ),
      trailing: IconButton( //darle funcion al boton eliminar
        icon: const Icon(Icons.delete), 
        onPressed: onDelete,),
    );
  }
}