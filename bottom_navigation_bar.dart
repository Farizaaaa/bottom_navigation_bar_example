import 'package:flutter/material.dart';

void main() {
  runApp(const BottomNavigationBarExampleApp());
}

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNavigationBarExample(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static TextStyle style =
      const TextStyle(color: Color.fromARGB(255, 7, 255, 222), fontSize: 20);

  static final List<Widget> _bodyContent = [
    Text(
      "Home Page",
      style: style,
    ),
    Text(
      "Notification Page",
      style: style,
    ),
    Text(
      "Message Page",
      style: style,
    )
  ];

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sample BottomNavigationBar",
          style: style,
        ),
      ),
      body: Center(
        child: _bodyContent.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded), label: "Massages")
        ],
      ),
    );
  }
}
