import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String studentName;
  final VoidCallback onPressed;

  const StudentCard({
    super.key,
    required this.studentName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            studentName,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
