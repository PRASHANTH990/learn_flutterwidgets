import 'package:flutter/material.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pageone.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagethree.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagetwo.dart';
import 'package:try_widgets_1/drawer.dart';

class TabsTry extends StatefulWidget {
  const TabsTry({super.key});

  @override
  State<TabsTry> createState() => _TabsTryState();
}

class _TabsTryState extends State<TabsTry> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text('Tabs'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            PageOne(),
            PageTwo(),
            PageThree(),
          ],
        ),
      ),
    );
  }
}








// class _PageTwoState extends State<PageTwo> with TickerProviderStateMixin {
//   late final TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // drawer: const MyDrawer(),
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Page Two'),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 3,
//             width: double.infinity,
//             child: Column(
//               children: [
//                 TabBar(
//                   controller: _tabController,
//                   tabs: const [
//                     Tab(
//                       icon: Icon(Icons.cloud_outlined),
//                       child: Text('cloud_outlined'),
//                     ),
//                     Tab(
//                       icon: Icon(Icons.brightness_5_sharp),
//                       child: Text('brightness_5_sharp'),
//                     ),
//                   ],
//                 ),
//                 Card(
//                   child: SizedBox(
//                     height: MediaQuery.of(context).size.height / 5,
//                     child: TabBarView(
//                       controller: _tabController,
//                       children: const [
//                         Center(
//                           child: Placeholder(),
//                         ),
//                         Center(
//                           child: Placeholder(),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Card(
//             child: Hero(
//               tag: 'pagetwo',
//               child: Expanded(
//                 child: Icon(
//                   Icons.face,
//                   size: 250,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'two',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
