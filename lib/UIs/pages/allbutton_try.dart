import 'package:flutter/material.dart';
import 'package:try_widgets_1/UIs/pages/customButton_try.dart';
import 'package:try_widgets_1/drawer.dart';

class ElevatedButtonTry extends StatefulWidget {
  const ElevatedButtonTry({super.key});

  @override
  State<ElevatedButtonTry> createState() => _ElevatedButtonTryState();
}

class _ElevatedButtonTryState extends State<ElevatedButtonTry> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('All Buttons'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(50.0),
        children: [
          ElevatedButton(
            child: const Text('This is ElevatedButton'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.back_hand),
            label: const Text('ElevatedButton.icon'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            child: const Text('This is FilledButton'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton.icon(
            icon: const Icon(Icons.back_hand),
            label: const Text('FilledButton.icon'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton.tonal(
            child: const Text('This is FilledButton.tonal'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton.tonalIcon(
            icon: const Icon(Icons.back_hand),
            label: const Text('FilledButton.tonalIcon'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            child: const Text('This is OutlinedButton'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.back_hand),
            label: const Text('OutlinedButton.icon'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            child: const Text('This is TextButton'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
            icon: const Icon(Icons.back_hand),
            label: const Text('OutlinedButton.icon'),
            onPressed: () => {},
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.back_hand),
                onPressed: () => {},
              ),
              FloatingActionButton.small(
                onPressed: () => {},
                tooltip: 'Increment',
                child: const Icon(Icons.back_hand),
              ),
              FloatingActionButton(
                onPressed: () => {},
                tooltip: 'Increment',
                child: const Icon(Icons.back_hand),
              ),
              FloatingActionButton.large(
                onPressed: () => {},
                tooltip: 'Increment',
                child: const Icon(Icons.back_hand),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          FloatingActionButton.extended(
            icon: const Icon(Icons.back_hand),
            label: const Text('FloatingActionButton.extended'),
            onPressed: () => {},
            tooltip: 'Increment',
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomButtonTry(),
          const SizedBox(
            height: 50,
          ),
          Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
          )
        ],
      ),
      // ----------------------------------------------------------------------
      // ----------------------------------------------------------------------
      floatingActionButton: FloatingActionButton.large(
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.purpleAccent,
            style: BorderStyle.solid,
            width: 4,
          ),
        ),
        elevation: 10,
        onPressed: () => {
          Navigator.of(context).pushNamed('/pagefour'),
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.qr_code_2_sharp,
        ),
      ),
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
