import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class MediaqueryTry extends StatefulWidget {
  const MediaqueryTry({super.key});

  @override
  State<MediaqueryTry> createState() => _MediaqueryTryState();
}

class _MediaqueryTryState extends State<MediaqueryTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Media query'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Placeholder(),
            ),
            Column(
              children: [
                Text(
                  "phone height: ${MediaQuery.of(context).size.height.toString()}",
                ),
                Text(
                  "phone width: ${MediaQuery.of(context).size.width.toString()}",
                ),
                const SizedBox(
                  height: 20,
                ),
                Builder(
                  builder: (context) {
                    return const Text('Text widget using builder');
                  },
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.amberAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    " height: ${(MediaQuery.of(context).size.height / 5).toString()}",
                  ),
                  Text(
                    " width: ${(MediaQuery.of(context).size.width / 2).toString()}",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
