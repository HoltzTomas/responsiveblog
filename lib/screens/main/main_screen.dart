import 'package:flutter/material.dart';
import 'components/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header()
        ],
      ),
    );
  }
}


