import "package:flutter/material.dart";

import "../widgets/drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 25;
  final String name = "flutterSujan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
