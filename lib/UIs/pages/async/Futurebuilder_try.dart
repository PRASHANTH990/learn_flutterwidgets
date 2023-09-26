import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class FutureBuilderTry extends StatefulWidget {
  const FutureBuilderTry({super.key});

  @override
  State<FutureBuilderTry> createState() => _FutureBuilderTryState();
}

class _FutureBuilderTryState extends State<FutureBuilderTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Future Builder'),
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
