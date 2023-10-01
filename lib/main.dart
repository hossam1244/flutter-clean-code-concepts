import 'package:flutter/material.dart';
import 'package:flutter_clean_code_concepts/concurrency%20/concurrency.dart';
import 'package:flutter_clean_code_concepts/error_handling/error_handling.dart';
import 'package:flutter_clean_code_concepts/formatting/formatting.dart';
import 'package:flutter_clean_code_concepts/functions/functions.dart';
import 'package:flutter_clean_code_concepts/home_screen.dart';
import 'package:flutter_clean_code_concepts/objects_and_data_structures/objects_and_data_structures.dart';
import 'package:flutter_clean_code_concepts/solid_principles/solid.dart';
import 'package:flutter_clean_code_concepts/testing/Testing.dart';
import 'package:flutter_clean_code_concepts/translation/Translation.dart';
import 'package:flutter_clean_code_concepts/variables/variables.dart';
import 'package:go_router/go_router.dart';

import 'classes/classes.dart';
import 'comments/comments.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter-Clean-Code',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  // GoRouter configuration
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/$concurrency',
        builder: (context, state) => Concurrency(),
      ),
      GoRoute(
        path: '/$functions',
        builder: (context, state) => Functions(),
      ),
      GoRoute(
        path: '/$variables',
        builder: (context, state) => Variables(),
      ),
      GoRoute(
        path: '/$solid',
        builder: (context, state) => SolidPrinciples(),
      ),
      GoRoute(
        path: '/$objectsAndDataStructures',
        builder: (context, state) => ObjectsAndDataStructures(),
      ),
      GoRoute(
        path: '/$translation',
        builder: (context, state) => Translation(),
      ),
      GoRoute(
        path: '/$formatting',
        builder: (context, state) => Formatting(),
      ),
      GoRoute(
        path: '/$testing',
        builder: (context, state) => Testing(),
      ),
      GoRoute(
        path: '/$errorHandling',
        builder: (context, state) => ErrorHandling(),
      ),
      GoRoute(
        path: '/$comments',
        builder: (context, state) => Comments(),
      ),
      GoRoute(
        path: '/$classes',
        builder: (context, state) => Classes(),
      ),
    ],
  );
}
