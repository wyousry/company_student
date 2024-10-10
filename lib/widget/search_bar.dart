import 'package:flutter/material.dart';

class SearchBarWithFilters extends StatefulWidget {
  const SearchBarWithFilters({super.key});

  @override
  _SearchBarWithFiltersState createState() => _SearchBarWithFiltersState();
}

class _SearchBarWithFiltersState extends State<SearchBarWithFilters> {
  bool showFilters = false;

  void toggleFilters() {
    setState(() {
      showFilters = !showFilters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 233, 233).withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: TextField(
              onTap: toggleFilters,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                    color:
                        const Color.fromARGB(255, 36, 33, 33).withOpacity(0.7)),
                hintText: 'Search...',
                hintStyle: TextStyle(
                    color:
                        const Color.fromARGB(255, 39, 36, 36).withOpacity(0.7)),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(16.0),
              ),
            ),
          ),
        ),
        if (showFilters)
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
    );
  }
}
