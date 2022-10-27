import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
          child: Text(
            "data",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
