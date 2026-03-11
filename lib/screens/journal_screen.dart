import 'package:flutter/material.dart';

class JournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Journal')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Journal text input
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Write your journal...',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20),

            // AI Analyzer placeholder button
            ElevatedButton(
              onPressed: () {
                // Placeholder action
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('AI Analyzer'),
                    content: Text(
                      '....',
                      style: TextStyle(fontSize: 16),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                      )
                    ],
                  ),
                );
              },
              child: Text('Analyze with AI'),
            ),
          ],
        ),
      ),
    );
  }
}
