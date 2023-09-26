import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class CardTry extends StatefulWidget {
  const CardTry({super.key});

  @override
  State<CardTry> createState() => _CardTryState();
}

class _CardTryState extends State<CardTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Cards'),
          onPressed: () => {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.settings_backup_restore),
      ),
    );
  }
}
