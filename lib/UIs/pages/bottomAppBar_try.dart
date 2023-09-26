import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class BottomAppBarTry extends StatefulWidget {
  const BottomAppBarTry({super.key});

  @override
  State<BottomAppBarTry> createState() => _BottomAppBarTryState();
}

class _BottomAppBarTryState extends State<BottomAppBarTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Silver App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Alert Dialog'),
          onPressed: () => {},
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.purpleAccent,
            style: BorderStyle.solid,
            width: 4,
          ),
        ),
        elevation: 10,
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.qr_code_2_sharp,
        ),
      ),
      // ----------------------------------------------------------------------
      // ----------------------------------------------------------------------
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.deepPurple,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.back_hand,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.back_hand,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.back_hand,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.back_hand,
                      color: Colors.white,
                    ),
                    onPressed: () => {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
