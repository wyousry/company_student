import 'package:company_student/widget/appbar.dart';
import 'package:company_student/widget/custom_button.dart';
import 'package:company_student/widget/student_detail.dart';
import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTasks(
        title: "Students",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Student Data",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 22),
            StudentDataCard(),
            const Spacer(),
            const StudentButtons(),
          ],
        ),
      ),
    );
  }
}
