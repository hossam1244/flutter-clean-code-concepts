import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_code_concepts/constants.dart';
import 'package:flutter_clean_code_concepts/variables/variables.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> data = [
    {
      'title': variables,
      'backgroundColor': Colors.grey,
    },
    {
      'title': functions,
      'backgroundColor': Colors.red,
    },
    {
      'title': objectsAndDataStructures,
      'backgroundColor': Colors.yellow,
    },
    {
      'title': classes,
      'backgroundColor': Colors.blue,
    },
    {
      'title': solid,
      'backgroundColor': Colors.green,
    },
    {
      'title': testing,
      'backgroundColor': Colors.orange,
    },
    {
      'title': concurrency,
      'backgroundColor': Colors.brown,
    },
    {
      'title': errorHandling,
      'backgroundColor': Colors.purple,
    },
    {
      'title': formatting,
      'backgroundColor': Colors.tealAccent,
    },
    {
      'title': comments,
      'backgroundColor': Colors.green,
    },
    {
      'title': translation,
      'backgroundColor': Colors.purple,
    },
  ];

  Widget _buildTile(String? title, Color? backgroundColor) {
    return InkWell(
      onTap: () {
        _navigateTo(title ?? '');
      },
      child: Container(
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

  _navigateTo(String route) {
    print('route: $route');
    context.go('/$route');
   // Navigator.pushNamed(context, '/$route');
  }
}
