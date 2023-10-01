import 'package:flutter/material.dart';

class Variables extends StatefulWidget {
  const Variables({super.key});

  @override
  State<Variables> createState() => _VariablesState();
}

class _VariablesState extends State<Variables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Variables'),
      ),
      body: const Placeholder(),);
  }
}
