import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hadeth View",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          fontFamily: "El Messeri",
        ),
      ),
    );
  }
}
