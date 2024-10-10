import 'package:company_student/widget/appbar.dart';
import 'package:company_student/widget/custom_card1.dart';
import 'package:company_student/widget/custom_card2.dart';
import 'package:flutter/material.dart';

class MessageStudentPage extends StatelessWidget {
  const MessageStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTasks(
        title: 'Students',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomCard1(),
              const SizedBox(height: 16),
              const CustomCard2(),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 15, 171, 125),
                    minimumSize: const Size(300, 45.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Send',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
