import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Stage extends Equatable {
  final String id;
  final String name;
  final Color color;

  const Stage({
    required this.id,
    required this.name,
    required this.color,
  });

  static List<Stage> stages = const [
    Stage(id: 'toDo', name: 'To do', color: Colors.red),
    Stage(id: 'inProgress', name: 'In Progress', color: Colors.orange),
    Stage(id: 'underReview', name: 'Under Review', color: Colors.yellow),
    Stage(id: 'done', name: 'Done', color: Colors.green),
  ];

  @override
  List<Object?> get props => [id, name, color];
}
