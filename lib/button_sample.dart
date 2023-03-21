import 'package:flutter/material.dart';

class ButtonSample extends StatefulWidget {
  ButtonSample({super.key});

  @override
  _ButtonSampleState createState() => _ButtonSampleState();
}

class _ButtonSampleState extends State<ButtonSample> {
  List<String> hobbies = ["eating", "sleeping", "running", "drawing", "yoga"];
  int _currentIndex = 0;
  List<Row> hobbiesList = [];

  _addToList() {
    if (_currentIndex < hobbies.length) {
      setState(() {
        hobbiesList.add(_buildHobbies(hobbies[_currentIndex]));
      });

      _currentIndex++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: _addToList,
          child: const Icon(Icons.add),
        ),
        Column(
          children: hobbiesList,
        ),
      ],
    );
  }

  Row _buildHobbies(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.favorite_border),
        Container(
          margin: const EdgeInsets.all(8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
