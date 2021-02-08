import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/appbar.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'List',
      ),
      body: Container(
        child: Text('Lista [...]'),
      ),
    );
  }
}
