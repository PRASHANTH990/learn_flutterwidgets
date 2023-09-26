import 'dart:async';

import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class StreamBuilderTry extends StatefulWidget {
  const StreamBuilderTry({super.key});

  @override
  State<StreamBuilderTry> createState() => _StreamBuilderTryState();
}

class _StreamBuilderTryState extends State<StreamBuilderTry> {
  StreamController _controller = StreamController();
  int _counter = 10;

  void StartTimer() async {
    // Timer Method that runs every second
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        _counter--;

        // add event/data to stream controller using sink
        _controller.sink.add(_counter);

        // will stop Count Down Timer when _counter value is 0
        if (_counter <= 0) {
          timer.cancel();
          _controller.close();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();

    // Destroy the Stream Controller when use exit the app
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Stream Builder'),
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: _controller.stream,
            builder: (ctx, snapshot) {
              return Text('${snapshot.data}');
            },
          ),
          ElevatedButton(
            onPressed: () {
              // start the timer
              StartTimer();
            },
            child: const Text('Start Count Down'),
          ),
        ],
      ),
    );
  }
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
  }
  return sum;
}
