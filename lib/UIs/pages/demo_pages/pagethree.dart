import 'package:flutter/material.dart';
// import 'package:try_widgets_1/drawer.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page Three'),
      ),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: const Placeholder(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: const Center(
              child: Hero(
                tag: 'pagethree',
                child: Icon(
                  Icons.qr_code_2,
                  size: 100,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'three',
        child: const Icon(Icons.add),
      ),
    );
  }
}
