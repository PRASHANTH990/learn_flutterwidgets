import 'package:flutter/material.dart';

class CustomButtonTry extends StatefulWidget {
  const CustomButtonTry({super.key});

  @override
  State<CustomButtonTry> createState() => _CustomButtonTryState();
}

class _CustomButtonTryState extends State<CustomButtonTry> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          child: Ink(
            width: 500,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.purpleAccent,
                  Colors.greenAccent,
                ],
              ),
            ),
            child: InkWell(
              onTap: () {
                debugPrint('tapped');
              },
              splashColor: Colors.deepPurpleAccent,
              customBorder: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: const Center(
                child: Text(
                  'Custom rounded rectangular Button',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Material(
          child: Ink(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                radius: 0.5,
                center: Alignment.center,
                tileMode: TileMode.clamp,
                transform: GradientRotation(10),
                colors: [
                  Colors.deepPurpleAccent,
                  Colors.greenAccent,
                ],
              ),
            ),
            child: InkWell(
              onTap: () {
                debugPrint('tapped');
              },
              splashColor: Colors.deepPurpleAccent,
              customBorder: const CircleBorder(),
              child: const Center(
                child: Text(
                  'Custom Circular Button',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        // GestureDetector()
      ],
    );
  }
}
