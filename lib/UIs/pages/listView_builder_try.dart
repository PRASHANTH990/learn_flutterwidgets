import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class ListViewBuilderTry extends StatefulWidget {
  const ListViewBuilderTry({super.key});

  @override
  State<ListViewBuilderTry> createState() => _ListViewBuilderTryState();
}

class _ListViewBuilderTryState extends State<ListViewBuilderTry> {
  List<String> numbers = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('ListView & builder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: numbers.length,
          separatorBuilder: (BuildContext context, index) {
            return const Divider(
              height: 10,
              color: Colors.pink,
            );
          },
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'centerwidget- ${numbers[index].toString()}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.qr_code_2_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'ListTile [title]',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'ListTile [subtitle] - ${numbers[index].toString()}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: const Text(
                    'trailing',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  splashColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  tileColor: Colors.purple,
                ),
              ],
            );
          },
          //----------------------------------------
          //child: ListView.builder(
          // itemCount: 10,
          // itemBuilder: (context, index) {
          //   return Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       color: Colors.green,
          //       height: 100,
          //       child: Center(
          //         child: Text(index.toString()),
          //       ),
          //     ),
          //   );
          // },
          //----------------------------------------
        ),
      ),
    );
  }
}
