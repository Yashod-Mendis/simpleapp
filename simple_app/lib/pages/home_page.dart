import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World!..."),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Hellow world!..."),

      ),

    );
  }
}