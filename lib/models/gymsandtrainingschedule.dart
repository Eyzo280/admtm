import 'package:flutter/material.dart';

class DaysTrainings {
  final String day;
  final List<Training> listTrainings;

  DaysTrainings({
    this.day,
    this.listTrainings,
  });
}

class Training {
  final String training;
  final String time;
  final Color color;

  Training({
    this.training,
    this.time,
    this.color,
  });
}
