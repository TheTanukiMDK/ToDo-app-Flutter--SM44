import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  final String taskId;

  const TaskDetailScreen({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Scaffod es un widget proporciona una estructura básica para la interfaz
      appBar: AppBar( //contiene el título de la pantalla
        title: const Text('Task Details'),
      ),
      body: Center( //El contenido principal de Scaffod, usamos center para centrar al hijo en el espacio disponible
        child: Text('Details for task ID: $taskId'), //muestra los detalles, usamos el taskId del construcctor
      )
    );
  }
}