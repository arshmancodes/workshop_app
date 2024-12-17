import 'package:flutter/material.dart';
import 'package:workshop_app/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Arshman Afzal"),
              accountEmail: Text("arshman3@gmail.com"),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfileScreen();
                    },
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
