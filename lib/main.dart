import 'package:flutter/material.dart';
import 'package:shopping/screens/Homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  );
}
