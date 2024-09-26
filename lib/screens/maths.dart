import 'package:flutter/material.dart';

class MathematicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics'),
        backgroundColor: Colors.deepPurple,
        elevation: 4,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade100, Colors.blue.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            _buildListTile(
              context,
              icon: Icons.table_chart,
              title: 'Tables',
              onTap: () {
                // Navigate to Tables Module
              },
            ),
            _buildListTile(
              context,
              icon: Icons.add,
              title: 'Addition Exercises',
              onTap: () {
                // Navigate to Addition Exercises
              },
            ),
            _buildListTile(
              context,
              icon: Icons.remove,
              title: 'Subtraction Exercises',
              onTap: () {
                // Navigate to Subtraction Exercises
              },
            ),
            // Add more exercises similarly
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, {required IconData icon, required String title, required VoidCallback onTap}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: Icon(
          icon,
          color: Colors.deepPurple,
          size: 30,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
      ),
    );
  }
}
