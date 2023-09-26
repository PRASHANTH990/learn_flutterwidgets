import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/');
                    }),
                // const Text('Widgets'),
                // const Text('Layouts'),
                // const Text('Forms'),
                // const Text('popups'),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("all buttons"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/allbuttons');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("SnackBar"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/snackbar');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("positional widgets"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/positionalwidgets');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Forms"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/forms');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("show modal bottomsheet"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/showmodalbottomsheet');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("alert dialog"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/alertdialog');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("ListTiles"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/ListTiles');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Cards"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/Cards');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Text"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/text');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Input Fields"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/inputfields');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Badges"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/badge');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("alert dialog"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/alertdialog');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Bottom navigation bar"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/bottomnavigationbar');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Bottom app bar"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/alertdialog');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("single child scroll view"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/singlescrollview');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Media Query"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/mediaquery');
                    }),
                ListTile(
                    leading: const Icon(Icons.widgets),
                    title: const Text("Layout builder"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/layoutbuilder');
                    }),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("ListView & builder"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/listviewbuilder');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Hero Animation"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/heroanimation');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Navigations"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/navigations');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Tabs"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/tabs');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Sliver Widgets"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/slivers');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Layout"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/layouts');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Stepper"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/stepper');
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Stream Builder"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/streamBuilder');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Future Builder"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/futureBuilder');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("http"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/httptry');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Cubit"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/cubittry');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.widgets),
                  title: const Text("Bloc"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/bloctry');
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
