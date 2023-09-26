import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';
import 'package:http/http.dart' as http;

class HttpTry extends StatefulWidget {
  const HttpTry({super.key});

  @override
  State<HttpTry> createState() => _HttpTryState();
}

class _HttpTryState extends State<HttpTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Http'),
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
