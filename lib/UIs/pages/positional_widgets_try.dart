import 'package:flutter/material.dart';
import 'package:try_widgets_1/drawer.dart';

class PositionalWidgetsTry extends StatefulWidget {
  const PositionalWidgetsTry({super.key});

  @override
  State<PositionalWidgetsTry> createState() => _PositionalWidgetsTryState();
}

class _PositionalWidgetsTryState extends State<PositionalWidgetsTry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Positional Widgets'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 50,
        ),
        decoration: const BoxDecoration(
          color: Colors.black12,
        ),
        child: ListView(
          children: [
            const Center(
              child: Column(
                children: [
                  Text('center Widget '),
                  Text('just to place stuff at the center'),
                  Text('***********'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                  'Padding Widget .. just to apply padding..EdgeInsets.all(40)'),
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: const Text(
                  'Container Widget ... like <div/> we can constratins ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 100,
              height: 100,
              child: Center(
                child: Text('SizedBox width: 100, height: 100'),
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('--------------'),
                Text('Column Widget '),
                Text('Column 1'),
                Text('Column 2'),
                Text('Column 3'),
                Text('Column 4'),
                Text('Column 5'),
                Text('--------------'),
              ],
            ),
            const Text('==================================='),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Row Widget '),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            const Center(
              child: Text('Row Widget centered'),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            const Text('==================================='),
            const Text('Flexible,  Ex'),
            Row(
              children: [
                const Flexible(
                  child: Text(
                    'text with Flexible',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            Row(
              children: [
                const Flexible(
                  child: Text(
                    'text with Flexible------------',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            Row(
              children: [
                const Flexible(
                  child: Text(
                    'text with Flexible------------------------',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            Row(
              children: [
                const Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    'text with fit: FlexFit.tight',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            Row(
              children: [
                const Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    'text with fit: FlexFit.loose',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'text with Expanded ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.back_hand),
                  onPressed: () => {},
                ),
              ],
            ),
            const Text('==================================='),
            const Center(
              child:
                  Text('ListView Widget \n scrollDirection: Axis.horizontal,'),
            ),
            Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  IconButton(
                    icon: const Icon(Icons.back_hand),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.abc),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_a_photo_rounded),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.perm_camera_mic),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.access_alarm),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.hail_rounded),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.label_important_outlined),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.zoom_in_map),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.key),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_a_photo_rounded),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.perm_camera_mic),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.access_alarm),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.hail_rounded),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
            const Text('==================================='),
            const Text('Wrap widget'),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.access_alarm),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.hail_rounded),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.label_important_outlined),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.zoom_in_map),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.key),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.add_a_photo_rounded),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.perm_camera_mic),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.access_alarm),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: const Icon(Icons.hail_rounded),
                  onPressed: () => {},
                ),
              ],
            ),
            const Text('==================================='),
            const Text('SizedBox - image.network - BoxFit.cover'),
            SizedBox(
              width: 200,
              height: 300,
              child: Image.network('https://picsum.photos/200/200',
                  fit: BoxFit.cover),
            ),
            //--------------------------------------------------
            const Text('container - BoxDecoration-AssetImage - BoxFit.cover'),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/mars.png"),
                  fit: BoxFit.fill,
                ),
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 1,
                ),
              ),
            ),
            //--------------------------------------------------
            const Text('Padding - image.asset'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/mars.png'),
            ),
            //--------------------------------------------------
            const Text('Padding - image.network'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                'https://picsum.photos/200/200',
              ),
            ),
            const Text('Padding - image.network - BoxFit.cover'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                'https://picsum.photos/200/200',
                fit: BoxFit.cover,
              ),
            ),
            //--------------------------------------------------
            const Text('CircleAvatar widget'),
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200/200'),
            ),
            //--------------------------------------------------
            const Text('==================================='),
            const Text('stack widget'),
            const Text('Positioned widgets in stack widgtes'),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 4),
                  ),
                  child: const Center(
                    child: Text('height: 200 \n width: 200'),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 4),
                  ),
                  child: const Center(
                    child: Text('height: 120 \n width: 120'),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 4),
                  ),
                  child: const Center(
                    child: Text('height: 100 \n width: 100'),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          width: 4),
                    ),
                    child: const Center(child: Text('bottom: 20\nright: 20')),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          width: 4),
                    ),
                    child: const Center(child: Text('bottom: 100\nright: 20')),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 4),
                    ),
                    child: const Center(child: Text('top: 10\nleft: 20')),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 4),
                    ),
                    child: const Center(child: Text('top: 100\nleft: 20')),
                  ),
                )
              ],
            ),
            const Text('==================================='),
            const Text('stack widget'),
          ],
        ),
      ),
    );
  }
}
