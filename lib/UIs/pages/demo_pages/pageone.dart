import 'package:flutter/material.dart';
// import 'package:try_widgets_1/drawer.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'pageone',
              child: Icon(
                Icons.pages,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text('page one'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: const Text('page one'),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
