import 'package:flutter/material.dart';
import 'journal_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AI Journal Test')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JournalScreen()),
            );
          },
          child: Text('Go to Journal'),
        ),
      ),
    );
  }
}
