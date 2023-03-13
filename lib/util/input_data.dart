import 'package:flutter/material.dart';

class InputData {
  final IconData icon;
  final String label;
  final TextEditingController controller;
  final bool obsecure;
  const InputData(
      {required this.icon,
      required this.label,
      required this.controller,
      this.obsecure = false});
}
