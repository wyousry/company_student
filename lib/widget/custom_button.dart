import 'package:company_student/screens/message_student.dart';
import 'package:flutter/material.dart';

class StudentButtons extends StatelessWidget {
  const StudentButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButton(
            context,
            "Edit",
            const Color.fromARGB(255, 15, 171, 125),
            () {
              
            },
          ),
          _buildButton(context, "Delete", Colors.red, () {
            _showDeleteConfirmationDialog(context);
          }),
          _buildButton(
            context,
            "Message",
            const Color.fromARGB(255, 15, 171, 125),
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MessageStudentPage()));
            },
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Delete"),
          content: const Text("Are you sure you want to delete this student?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text(
                "Delete",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildButton(
      BuildContext context, String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.normal,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
