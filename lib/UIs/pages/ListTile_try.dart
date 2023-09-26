import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class ListTileTry extends StatefulWidget {
  const ListTileTry({super.key});

  @override
  State<ListTileTry> createState() => _ListTileTryState();
}

class _ListTileTryState extends State<ListTileTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('List Tile'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey[200],
        ),
        child: Card(
          elevation: 0,
          margin: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: ListView(
            children: [
              const ListTile(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(24),
                //     topRight: Radius.circular(24),
                //     bottomRight: Radius.circular(0),
                //     bottomLeft: Radius.circular(0),
                //   ),
                // ),
                leading: Icon(
                  Icons.qr_code_2_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'ListTile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'subtitle',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Text(
                  'trailing',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                splashColor: Colors.greenAccent,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(16),
                // ),
                contentPadding: EdgeInsets.all(10),
                tileColor: Colors.purple,
              ),
              const Divider(height: 2),
              Dismissible(
                key: const Key('111'),
                background: Container(
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.red),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text('Primary background',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.delete, color: Colors.white),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text('secondary Background',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                onDismissed: (DismissDirection direction) {
                  print(direction);
                  if (direction == DismissDirection.startToEnd) {
                    print("primary Background ");
                  } else {
                    print('secondary Background');
                  }
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.qr_code_2_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'ListTile [ Dismissible ]',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: const Text(
                    'subtitle',
                    style: TextStyle(
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
                    borderRadius: BorderRadius.circular(0),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  tileColor: Colors.deepPurpleAccent,
                ),
              ),
              const Divider(height: 2),
              const ExpansionTile(
                title: Text('ExpansionTile [title]'),
                subtitle: Text('[subtitle]'),
                // backgroundColor: Colors.blueAccent,
                leading: Icon(
                  Icons.qr_code_2_rounded,
                  color: Colors.white,
                ),

                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(16),
                //   ),
                // ),
                // collapsedShape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(16),
                //   ),
                // ),
                // trailing: Text('trailing'),
                children: <Widget>[
                  Text('children'),
                  ListTile(
                    title: Text('This is tile number 1'),
                  ),
                  Text('children'),
                  ListTile(
                    title: Text('This is tile number 1'),
                  ),
                ],
              ),
              const Divider(height: 2),
              const ListTile(
                leading: Icon(
                  Icons.qr_code_2_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'ListTile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'subtitle',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Text(
                  'trailing',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                splashColor: Colors.greenAccent,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(16),
                // ),
                contentPadding: EdgeInsets.all(10),
                tileColor: Colors.purple,
              ),
              const Divider(height: 2),
              const ListTile(
                leading: Icon(
                  Icons.qr_code_2_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'ListTile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'subtitle',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Text(
                  'trailing',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                splashColor: Colors.greenAccent,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(16),
                // ),
                contentPadding: EdgeInsets.all(10),
                tileColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
