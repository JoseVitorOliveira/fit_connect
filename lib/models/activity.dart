import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMMMd();

const uuid = Uuid();

enum Category {
  esporte,
  corrida,
  pedal,
  exercicio,
  outro,
}

const categoryIcons = {
  Category.esporte: Icons.sports_handball_rounded,
  Category.corrida: Icons.directions_run,
  Category.pedal: Icons.directions_bike,
  Category.exercicio: Icons.fitness_center,
  Category.outro: Icons.more_horiz,
};

class Activity {
  final String id;
  final String name;
  final String description;
  final String place;
  final Category category;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  Activity({
    required this.name,
    required this.description,
    required this.place,
    required this.category,
    required this.date,
    required this.startTime,
    required this.endTime,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}
