import 'package:flutter/material.dart';

class CustomCard1 extends StatefulWidget {
  const CustomCard1({super.key});

  @override
  _CustomCard1State createState() => _CustomCard1State();
}

class _CustomCard1State extends State<CustomCard1> {
  String? selectedSubject;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 340,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Subject:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 8),
            Container(
            
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(10), 
                boxShadow: [
                  BoxShadow(
                    color:
                        Colors.black.withOpacity(0.1), 
                    spreadRadius: 1, 
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: InputBorder.none, 
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                value: selectedSubject,
                items: const [
                  DropdownMenuItem(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  DropdownMenuItem(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                  DropdownMenuItem(
                    value: 'Option 4',
                    child: Text('Option 4'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectedSubject = value;
                  });
                },
                isExpanded: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
