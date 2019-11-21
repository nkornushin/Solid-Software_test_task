import 'dart:math';
import 'package:flutter/material.dart';

Color generateColor() {
  final Random random = Random();
  return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
}