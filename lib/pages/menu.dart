import 'package:flutter/material.dart';

class UserMenu extends StatelessWidget {
  const UserMenu({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 84, 150),
       appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 84, 150),
        title: const Text(
          "Discover More",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        
      ),
    );
  }
}