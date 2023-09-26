import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:try_widgets_1/drawer.dart';

class ScrollItemsTry extends StatefulWidget {
  const ScrollItemsTry({super.key});

  @override
  State<ScrollItemsTry> createState() => _ScrollItemsTryState();
}

class _ScrollItemsTryState extends State<ScrollItemsTry> {
  ScrollController scrollCtrl = ScrollController();
  TextEditingController textEditingCtrl = TextEditingController();

  bool scrolled = false;
  double scrollPosition = 0.0;

  @override
  void initState() {
    textEditingCtrl.addListener(() {
      print(textEditingCtrl.text);
    });
    scrollCtrl.addListener(() {
      scrolled = true;
      scrollPosition = scrollCtrl.offset;
      print(scrollPosition.toString());
    });

    super.initState();
  }

  void getScrollPosition() {
    setState(() {
      scrollPosition = scrollCtrl.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('single child scroll view'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollCtrl,
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              const Text(
                ' physics: const BouncingScrollPhysics(),',
              ),
              const SizedBox(
                height: 100,
              ),
              TextField(
                controller: textEditingCtrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name - OutlineInputBorder',
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextField(
                controller: textEditingCtrl,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your name - UnderlineInputBorder ',
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextField(
                controller: textEditingCtrl,
                cursorColor: Colors.red,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person_2),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(30),
                  constraints: BoxConstraints.expand(height: 100, width: 350),
                  counterText: 'counterText',
                  helperText: 'helperText',
                  hintText: 'hintText',
                  labelText: 'labelText',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: textEditingCtrl,
                cursorColor: Colors.green,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.key),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(30),
                  constraints: BoxConstraints.expand(height: 100, width: 350),
                  helperText: 'enter the password Da',
                  hintText: 'Enter Password',
                  labelText: 'password',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                controller: textEditingCtrl,
                cursorColor: Colors.green,
                obscureText: false,
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(16),

                  // helperText: 'enter the password Da',
                  // hintText: 'Enter Email',
                  labelText: 'Email',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: textEditingCtrl,
                cursorColor: Colors.green,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.password_outlined,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(16),

                  // helperText: 'enter the password Da',
                  // hintText: 'Enter Password',
                  labelText: 'password',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
              ElevatedButton(
                onPressed: getScrollPosition,
                child: const Text('This is ElevatedButton'),
              ),
              OutlinedButton(
                onPressed: getScrollPosition,
                child: const Text('This is OutlinedButton'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FilledButton(
        onPressed: () => {},
        child: scrolled
            ? Text("Scroll Position: ${scrollPosition.toString()}")
            : const Text("null"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
