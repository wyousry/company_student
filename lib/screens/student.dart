import 'package:company_student/screens/detailed_student.dart';
import 'package:company_student/widget/appbar.dart';
import 'package:company_student/widget/search_bar.dart';
import 'package:company_student/widget/student_card.dart';
import 'package:flutter/material.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  _StudentsScreenState createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  final List<String> students = [
    'Youssef ',
    'Ahmed ',
    'Muhammed',
  ];

  bool showFilters = false;

  void toggleFilters() {
    setState(() {
      showFilters = !showFilters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTasks(
        title: 'Students',
      ),
      body: Column(
        children: [
          const SearchBarWithFilters(),
          if (showFilters) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    hint: const Text('Filter by group',
                        style: TextStyle(fontSize: 12)),
                    items: ['Group 1', 'Group 2', 'Group 3', 'Group 4']
                        .map((group) => DropdownMenuItem<String>(
                              value: group,
                              child: Text(group),
                            ))
                        .toList(),
                    onChanged: (value) {},
                  ),
                  DropdownButton<String>(
                    hint: const Text('Filter by Track',
                        style: TextStyle(fontSize: 12)),
                    items: ['Track 1', 'Track 2', 'Track 3', 'Track 4']
                        .map((track) => DropdownMenuItem<String>(
                              value: track,
                              child: Text(track),
                            ))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return StudentCard(
                  studentName: students[index],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentScreen()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
