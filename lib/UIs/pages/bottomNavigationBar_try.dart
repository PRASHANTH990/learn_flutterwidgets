import 'package:flutter/material.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagefour.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pageone.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagethree.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagetwo.dart';
import 'package:try_widgets_1/drawer.dart';

class BottomNavigationBarTry extends StatefulWidget {
  const BottomNavigationBarTry({super.key});

  @override
  State<BottomNavigationBarTry> createState() => _BottomNavigationBarTryState();
}

class _BottomNavigationBarTryState extends State<BottomNavigationBarTry> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Bottom navigation bar & Indexed Stack'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          PageOne(),
          PageTwo(),
          PageThree(),
          PageFour(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.greenAccent,
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'ONE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'TWO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'THREE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'FOUR',
          ),
        ],
      ),
    );
  }
}
