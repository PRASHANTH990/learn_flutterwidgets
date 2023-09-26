import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';
// import 'package:http/http.dart' as http;

class CubitTry extends StatefulWidget {
  const CubitTry({super.key});

  @override
  State<CubitTry> createState() => _CubitTryState();
}

class _CubitTryState extends State<CubitTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Cubit'),
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
