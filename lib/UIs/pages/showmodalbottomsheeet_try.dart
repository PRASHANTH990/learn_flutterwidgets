import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class ShowModalBottomSheetTry extends StatefulWidget {
  const ShowModalBottomSheetTry({super.key});

  @override
  State<ShowModalBottomSheetTry> createState() =>
      _ShowModalBottomSheetTryState();
}

class _ShowModalBottomSheetTryState extends State<ShowModalBottomSheetTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Show Modal BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Modal BottomSheet'),
          onPressed: () => {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 900,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('Modal BottomSheet'),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          },
        ),
      ),
    );
  }
}
