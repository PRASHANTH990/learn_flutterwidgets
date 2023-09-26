import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    debugPrint('add');
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    debugPrint('remove');
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        toolbarHeight: 64,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.blue,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Doe', style: (TextStyle(fontSize: 16))),
                Row(
                  children: [
                    Text('Bangkok', style: (TextStyle(fontSize: 10))),
                    SizedBox(
                      width: 10,
                    ),
                    Text('|', style: (TextStyle(fontSize: 8))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4.5',
                      style: (TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(width: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Your Earnings', style: (TextStyle(fontSize: 14))),
                SizedBox(
                  width: 20,
                ),
                Text('Baht 45,0000', style: (TextStyle(fontSize: 12))),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
            onPressed: () => {print(context)},
          ),
        ],
      ),
      // -----------------------------------------------------------------------
      // -----------------------------------------------------------------------
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // -----------------------------------------------------------------------
      // -----------------------------------------------------------------------
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
