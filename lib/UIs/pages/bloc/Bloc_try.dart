import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';
import 'package:http/http.dart' as http;

class BlocTry extends StatefulWidget {
  const BlocTry({super.key});

  @override
  State<BlocTry> createState() => _BlocTryState();
}

class _BlocTryState extends State<BlocTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Alert Dialog'),
          onPressed: () => {},
        ),
      ),
    );
  }
}
