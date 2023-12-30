import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image(image: AssetImage('assets/images/radio.png')),
          SizedBox(
            height: 50,
          ),
          Text(
            'إذاعة القرآن الكريم',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
