import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class HeroAnimationTry extends StatefulWidget {
  const HeroAnimationTry({super.key});

  @override
  State<HeroAnimationTry> createState() => _HeroAnimationTryState();
}

class _HeroAnimationTryState extends State<HeroAnimationTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Hero Animations'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          // Container(
          //   padding: const EdgeInsets.all(8),
          //   color: Colors.teal[100],
          //   child: Hero(
          //     tag: "pageone",
          //     child: InkWell(
          //       splashColor: Colors.deepPurpleAccent,
          //       onTap: () {
          //         Navigator.of(context).pushNamed('/pageone');
          //       },
          //       child: const Icon(
          //         Icons.pages,
          //         size: 70.0,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: Hero(
              tag: "pageone",
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/pageone');
                },
                child: const Icon(
                  Icons.pages,
                  size: 70.0,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: Hero(
              tag: "pagetwo",
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/pagetwo');
                },
                child: const Icon(
                  Icons.face,
                  size: 70.0,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/pagethree');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Hero(
                tag: "pagethree",
                child: Icon(
                  Icons.tab,
                  size: 70.0,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const PageFour(),
                //   ),
                // );
                Navigator.of(context).pushNamed('/pagefour');
              },
              child: const Hero(
                tag: "pagefour",
                child: Icon(
                  Icons.qr_code,
                  size: 70.0,
                ),
              ),
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.all(8),
          //   color: Colors.teal[500],
          //   child: const Text('Revolution is coming...'),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(8),
          //   color: Colors.teal[600],
          //   child: const Text('Revolution, they...'),
          // ),
        ],
      ),
    );
  }
}
