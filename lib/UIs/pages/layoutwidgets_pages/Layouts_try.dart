import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class LayoutTry extends StatefulWidget {
  const LayoutTry({super.key});

  @override
  State<LayoutTry> createState() => _LayoutTryState();
}

class _LayoutTryState extends State<LayoutTry> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Layouts'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  icon: Icon(Icons.settings_overscan_outlined),
                  child: Text('Single Child layout'),
                ),
                Tab(
                  icon: Icon(Icons.layers),
                  child: Text('Multi Child layout'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: ListView(
                    children: [
                      const Text('Align'),
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          color: Colors.blue[50],
                          child: const Align(
                            // alignment: Alignment.topRight,
                            //                -1  1
                            //                <---->  ,   ^ -1
                            //                            |
                            //                            |
                            //                            |
                            //                            V  1
                            alignment: Alignment(1, 0.5),
                            // alignment: FractionalOffset(0.1, 0.6),
                            child: FlutterLogo(
                              size: 60,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      const Text('AspectRatio'),
                      Container(
                        color: Colors.blue,
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 100.0,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 100.0,
                        child: Row(
                          children: [
                            AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Container(
                                color: Colors.green,
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text('AspectRatio : 16 / 9'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 100.0,
                                color: Colors.red,
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text('expanded'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      const Text('Center'),
                      Container(
                        height: 200,
                        color: Colors.amber,
                        child: Center(
                          child: Text('center'),
                        ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      const Text('ConstrainedBox'),
                      ConstrainedBox(
                        //constraints: BoxConstraints.loose(
                        //   const Size(
                        //     100,
                        //     300,
                        //   ),
                        // ),
                        // constraints: const BoxConstraints.expand(
                        //   height: 100,
                        //   width: 50,
                        // ),
                        // constraints: const BoxConstraints.tightFor(
                        //   width: 50,
                        // ),
                        // constraints: const BoxConstraints.tightForFinite(),

                        constraints: const BoxConstraints(
                          // maxWidth: 60,
                          // maxHeight: 200,
                          minWidth: 50,
                          minHeight: 100,
                        ),
                        child: Card(
                          child: Column(
                            children: [
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                              ElevatedButton(
                                child: const Text('Button'),
                                onPressed: () => {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('Container'),
                      Container(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.hardEdge,
                        height: 200,
                        width: 200,
                        constraints: const BoxConstraints(
                          // maxWidth: 60,
                          // maxHeight: 200,
                          minWidth: 50,
                          minHeight: 100,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 8,
                          ),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        // decoration: ShapeDecoration(
                        //   color: Colors.white,
                        //   shape: Border.all(
                        //         color: Colors.red,
                        //         width: 8.0,
                        //       ) +
                        //       Border.all(
                        //         color: Colors.green,
                        //         width: 8.0,
                        //       ) +
                        //       Border.all(
                        //         color: Colors.blue,
                        //         width: 8.0,
                        //       ) +
                        //       Border.all(
                        //         color: Colors.black,
                        //         width: 8.0,
                        //       ),
                        // ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('Baseline'),
                      Container(
                        height: 100.0,
                        color: Colors.blue,
                        child: const Baseline(
                          baselineType: TextBaseline.ideographic,
                          baseline: 50,
                          child: Text('baseline:50'),
                        ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('CustomSingleChildLayout'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      const Text('Expanded'),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 60,
                          maxHeight: 500,
                          minWidth: 50,
                          minHeight: 300,
                        ),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.blue,
                              height: 100,
                              width: 100,
                              child: Center(
                                child: Text(
                                  'Container \nheight: 100,\nwidth: 100',
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.amber,
                                width: 100,
                                child: Center(
                                  child: Text(
                                    'Expanded \n flex: 1',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.blue,
                              height: 100,
                              width: 100,
                              child: Center(
                                child: Text(
                                  'Container \nheight: 100,\nwidth: 100',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('FittedBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('FractionallySizedBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('LimitedBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('Offstage'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('OverflowBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('Padding'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('SizedBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('SizedOverflowBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('Transform'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Text('FractionallySizedBox'),
                      const Text(
                        '----------------------------------------------------------------------------',
                      ),
                      Placeholder(),
                    ],
                  ),
                ),
                ListView(
                  children: const [
                    Text('Align'),
                    Text('AspectRatio'),
                    Text('Center'),
                    Text('ConstrainedBox'),
                    Text('Container'),
                    Text('Baseline'),
                    Text('CustomSingleChildLayout'),
                    Text('Expanded'),
                    Text('FittedBox'),
                    Text('FractionallySizedBox'),
                    Text('LimitedBox'),
                    Text('FractionallySizedBox'),
                    Text('FractionallySizedBox'),
                    Text('FractionallySizedBox'),
                    Text('FractionallySizedBox'),
                    Text('FractionallySizedBox'),
                    Text('FractionallySizedBox'),
                    Text('FractionallySizedBox'),
                    Placeholder(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
