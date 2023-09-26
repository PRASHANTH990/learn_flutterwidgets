import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class SliverWidgets extends StatefulWidget {
  const SliverWidgets({super.key});

  @override
  State<SliverWidgets> createState() => _SliverWidgetsState();
}

class _SliverWidgetsState extends State<SliverWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MyDrawer(),
      // appBar: AppBar(
      //   title: const Text('Sliver widgets'),
      // ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.black,
            expandedHeight: MediaQuery.of(context).size.height / 4,
            collapsedHeight: 100,
            title: const Text(
              'Flutter Slivers Demo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.create_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_4_outlined,
                  color: Colors.white,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'flexibleSpace - title - Column - text',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: () => {},
                            tooltip: 'Increment',
                            child: const Icon(Icons.back_hand),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              collapseMode: CollapseMode.parallax,
              background: Image.network(
                "https://images.unsplash.com/photo-1603785608232-44c43cdc0d70?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fEo5eXJQYUhYUlFZfHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList.list(
            children: [
              MyTestList1(),
              MyTestList1(),
              MyTestList1(),
              MyTestList1(),
              MyTestList1(),
              MyTestList1(),
              MyTestList1(),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Divider(
                  height: 10,
                ),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
                MyTestList1(),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Column MyTestList1() {
    return const Column(
      children: [
        ListTile(
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
        Divider(
          height: 1,
        )
      ],
    );
  }
}
