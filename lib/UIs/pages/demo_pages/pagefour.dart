import 'package:flutter/material.dart';
// import 'package:try_widgets_1/drawer.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('page four - QRCode'),
      ),
      body: const Hero(
        tag: 'pagefour',
        child: Center(
          child: Expanded(
            child: Icon(
              Icons.qr_code_2,
              size: 350,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'four',
        child: const Icon(Icons.qr_code_2_sharp),
      ),
    );
  }
}
