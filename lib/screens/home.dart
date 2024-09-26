import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:signsiksha/screens/alpha_num.dart';
import 'package:signsiksha/screens/conversion.dart';
import 'package:signsiksha/screens/maths.dart';
import 'package:signsiksha/screens/profile.dart';
import 'package:signsiksha/widgets/admin_login.dart';
//import 'package:firebase_auth/firebase_auth.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 2) { 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminLoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 5, 119),
        elevation: 0,
        leading: PopupMenuButton(
          icon: Icon(Icons.menu, color: Colors.black),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 'profile',
              child: Text('My Profile'),
            ),
            PopupMenuItem(
              value: 'logout',
              child: Text('Logout'),
            ),
          ],
          onSelected: (value) {
            if (value == 'profile') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            } else if (value == 'logout') {
              //
            }
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                // Handle Analysis button press
              },
              child: Row(
                children: [
                  Icon(Icons.analytics, color: Colors.pink),
                  SizedBox(width: 4),
                  Text('Analysis', style: TextStyle(color: Colors.pink)),
                ],
              ),
            ),
          ),
        ],
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            // delay for the zigzag effect
            final delay = Duration(milliseconds: index * 200);

            return FadeTransition(
              opacity: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Interval(0.0, 1.0, curve: Curves.easeInOut),
                ),
              ),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0.0, 0.2),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(
                    parent: _controller,
                    curve: Interval(
                      delay.inMilliseconds / 800,
                      1.0,
                      curve: Curves.easeInOut,
                    ),
                  ),
                ),
                child: _buildFeatureCard(
                  context,
                  _getTitle(index),
                  _getIcon(index),
                  _getColor(index),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 139, 5, 119),
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, String title, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Alphabets & Numbers':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlphabetsNumbersScreen()),
            );
            break;
          case 'Mathematics':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MathematicsScreen()),
            );
            break;
          case 'Conversion Tools':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConversionToolsScreen()),
            );
            break;
          default:
            break;
        }
      },
      child: Hero(
        tag: title,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.9, end: 1.0).animate(
            CurvedAnimation(parent: _controller, curve: Curves.elasticInOut),
          ),
          child: Card(
            color: color,
            margin: EdgeInsets.all(8),
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 50, color: Color.fromARGB(255, 188, 180, 180)),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Alphabets & Numbers';
      case 1:
        return 'Words & Sentences';
      case 2:
        return 'Mathematics';
      case 3:
        return 'Science';
      case 4:
        return 'Conversion Tools';
      default:
        return '';
    }
  }

  IconData _getIcon(int index) 
  {
    switch (index) {
      case 0: //language
        //Icon icon0=Icon(Icons.language,size: 20,color:Colors.green);
        return Icons.language;
      case 1: //book
        //Icon icon1=Icon(Icons.book,size: 20,color:Colors.brown);
        return Icons.book;
      case 2: //calculate
        //Icon icon2=Icon(Icons.calculate,size: 20,color:Colors.blue);
        return Icons.calculate;
      case 3: //science
        //Icon icon3=Icon(Icons.science,size: 20,color:Colors.purple);
        return Icons.science;
      case 4: //translate
        //Icon icon4=Icon(Icons.translate,size: 20,color:Colors.yellow);
        return Icons.translate;
      default: //help
        //Icon icon5=Icon(Icons.help,size: 20,color:Colors.red);
        return Icons.help;
  }
  }

  Color _getColor(int index) 
  {
    switch (index) {
      case 0:
        return Colors.purple.shade100;
      case 1:
        return Colors.purple.shade100;
      case 2:
        return Colors.purple.shade100;
      case 3:
        return Colors.purple.shade100;
      case 4:
        return Colors.purple.shade100;
      default:
        return Colors.purple.shade100;
    }
  }
}
  
