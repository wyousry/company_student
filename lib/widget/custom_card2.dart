import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 340,
        height: 375,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Body:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 298,
              child: TextField(
                maxLines: null,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
