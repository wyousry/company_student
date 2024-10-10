import 'package:company_student/screens/student.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CompanyStudents());
}

class CompanyStudents extends StatelessWidget {
  const CompanyStudents({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentsScreen(),
    );
  }
}
