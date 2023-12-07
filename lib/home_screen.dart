import 'package:animation_list/animation_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/constants.dart';

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

  _navigateToSpecificScreen(String route) {
    context.go('/$route');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean-Code Concepts'),
      ),
      body: Center(
        child: AnimationList(
            duration: 1500,
            reBounceDepth: 30,
            children: data.map((item) {
              String? title = item['title'];
              Color? backgroundColor = item['backgroundColor'];
              return _customBuildTile(title, backgroundColor);
            }).toList()),
      ),
    );
  }

  Widget _customBuildTile(String? title, Color? backgroundColor) {
    return InkWell(
      onTap: () {
        _navigateToSpecificScreen(title ?? '');
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            title ?? "",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
