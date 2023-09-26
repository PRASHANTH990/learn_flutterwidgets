import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class SnackBarTry extends StatefulWidget {
  const SnackBarTry({super.key});

  @override
  State<SnackBarTry> createState() => _SnackBarTryState();
}

class _SnackBarTryState extends State<SnackBarTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: const Center(
        child: Text('press FAB'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              showCloseIcon: true,
              elevation: 3,
              duration: const Duration(milliseconds: 1500),
              content: const Text('Awesome Snackbar!'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () => {},
              ),
            ),
          ),
        },
        tooltip: 'Increment',
        child: const Icon(Icons.settings_backup_restore),
      ),
    );
  }
}
