import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class AlertDialogTry extends StatefulWidget {
  const AlertDialogTry({super.key});

  @override
  State<AlertDialogTry> createState() => _AlertDialogTryState();
}

class _AlertDialogTryState extends State<AlertDialogTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Alert Dialog'),
          onPressed: () => {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Alert Dialog'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            )
          },
        ),
      ),
    );
  }
}
