import 'package:flutter/material.dart';

class RegionPage extends StatelessWidget {
  const RegionPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          title, 
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white), // Définir la couleur du bouton de retour
      ),
      body: Container(),
    );
  }
}