import 'package:flutter/material.dart';

class ConversionToolsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversion Tools'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter English Text',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // in progress
            },
            child: Text('Convert to Sign Language'),
          ),
          Divider(),
          ElevatedButton(
            onPressed: () {
              // in progress
            },
            child: Text('Convert Speech to Sign Language'),
          ),
        ],
      ),
    
    );
  }
}
