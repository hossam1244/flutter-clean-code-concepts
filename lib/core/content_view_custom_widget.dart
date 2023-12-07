import 'package:dart_code_viewer2/dart_code_viewer2.dart';
import 'package:flutter/material.dart';

class ViewContentCustomWidget extends StatelessWidget {
  String? title;
  String? description;
  String? badCode;
  String? goodCode;

  ViewContentCustomWidget(
      {super.key, this.title, this.description, this.badCode, this.goodCode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title ?? '', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text(description ?? '', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('Bad Code'),
          Container(
            child: DartCodeViewer(
              badCode ?? '',
              height: 200,
            ),
          ),
          Text('Good Code'),
          Container(
            height: 200,
            child: DartCodeViewer(
              goodCode ?? '',
            ),
          )
        ],
      ),
    );
  }
}
