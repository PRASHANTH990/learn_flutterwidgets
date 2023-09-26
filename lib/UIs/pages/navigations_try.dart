import 'package:flutter/material.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pageone.dart';

import 'package:try_widgets_1/drawer.dart';

class NavigationsTry extends StatefulWidget {
  const NavigationsTry({super.key});

  @override
  State<NavigationsTry> createState() => _NavigationsTryState();
}

class _NavigationsTryState extends State<NavigationsTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Navigations'),
      ),
      body: ListView(
        children: [
          const Text('push'),
          ElevatedButton(
            child: const Text('/pageone'),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PageOne(),
                ),
              )
            },
          ),
          const Text("Navigator.of(context).pushNamed('/pageone')"),
          ElevatedButton(
            child: const Text('/pageone'),
            onPressed: () => {
              Navigator.of(context).pushNamed('/pageone'),
            },
          ),
          const Text("Navigator.pushNamed(context, '/pageone')"),
          ElevatedButton(
            child: const Text('/pageone'),
            onPressed: () => {
              Navigator.pushNamed(context, '/pageone'),
            },
          ),
          const Text('pushReplacement'),
          ElevatedButton(
            child: const Text('/pageone'),
            onPressed: () => {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const PageOne(),
                ),
              )
            },
          ),
          const Text(" Navigator.pushReplacementNamed(context, '/pageone')"),
          ElevatedButton(
            child: const Text('/pageone'),
            onPressed: () => {
              Navigator.pushReplacementNamed(context, '/pageone'),
            },
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('pop'),
          ElevatedButton(
            child: const Text('pop --> remove this page'),
            onPressed: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
