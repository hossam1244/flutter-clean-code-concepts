import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'Variables',
      'backgroundColor': Colors.grey,
    },
    {
      'title': 'Functions',
      'backgroundColor': Colors.red,
    },
    {
      'title': 'Objects and Data Structures',
      'backgroundColor': Colors.yellow,
    },
    {
      'title': 'Classes',
      'backgroundColor': Colors.blue,
    },
    {
      'title': 'SOLID',
      'backgroundColor': Colors.green,
    },
    {
      'title': 'Testing',
      'backgroundColor': Colors.orange,
    },
    {
      'title': 'Concurrency',
      'backgroundColor': Colors.brown,
    },
    {
      'title': 'Error Handling',
      'backgroundColor': Colors.purple,
    },
    {
      'title': 'Formatting',
      'backgroundColor': Colors.tealAccent,
    },
    {
      'title': 'Comments',
      'backgroundColor': Colors.green,
    },
    {
      'title': 'Translation',
      'backgroundColor': Colors.purple,
    },
  ];

  Widget _buildTile(String? title, Color? backgroundColor) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          title ?? "",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Clean-Code Concepts'),
      ),
      body: Center(
        child: AnimationList(
            duration: 1500,
            reBounceDepth: 30,
            children: data.map((item) {
              return _buildTile(item['title'], item['backgroundColor']);
            }).toList()),
      ),
    );
  }
}
