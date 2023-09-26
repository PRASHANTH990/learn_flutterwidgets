import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class LayoutBuilderTry extends StatefulWidget {
  const LayoutBuilderTry({super.key});

  @override
  State<LayoutBuilderTry> createState() => _LayoutBuilderTryState();
}

class _LayoutBuilderTryState extends State<LayoutBuilderTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Layout builder'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Layout builder builds based on parent Widget',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              'width: MediaQuery.of(context).size.width - 100,',
            ),
          ),
          const Center(
            child: Text(
              'height: MediaQuery.of(context).size.height / 3',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: MediaQuery.of(context).size.width - 100,
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.deepPurple,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Center(
                    child: Container(
                      color: Colors.amberAccent,
                      width: constraints.maxWidth - 50,
                      height: constraints.maxHeight / 2,
                      child: const Center(
                        child: Text(
                          'width:\n constraints.maxWidth - 100,\nheight:\n constraints.maxHeight / 2',
                        ),
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
