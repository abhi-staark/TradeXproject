import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("TradeX"),
        actions: [
          TextButton(onPressed: null, child: Text("About us")),
          TextButton(onPressed: null, child: Text("Products")),
          TextButton(onPressed: null, child: Text("Learn")),
          TextButton(onPressed: null, child: Text("Contact")),
        ],
      ),
    );
  }
}
