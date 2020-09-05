import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      'Tab 1',
      'Tab 2',
      'Tab 3',
      'Tab 4',
      'Tab 5',
      'Tab 6',
      'Tab 7',
      'Tab 8',
      'Tab 9',
    ];

    return
      MaterialApp(
      title: 'Flutter Demo',
    //  theme: _buildShrineTheme(),
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Scrollable Tabs Theme'),
            automaticallyImplyLeading: false,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                for (final tab in tabs) Tab(text: tab),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (final tab in tabs)
                Center(
                  child: Text(tab),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

///***
///MaterialApp(
//       title: 'Flutter Demo',
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Fixed Tabs'),
//             automaticallyImplyLeading: false,
//             backgroundColor: Color(0xff5808e5),
//             bottom: TabBar(
//               indicatorColor: Colors.white,
//               tabs: [
//                 Tab(text: 'DOGS', icon: Icon(Icons.favorite)),
//                 Tab(text: 'CATS', icon: Icon(Icons.music_note)),
//                 Tab(text: 'BIRDS', icon: Icon(Icons.search)),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//                 Center(child: Text('DOGS')),
//                 Center(child: Text('CATS')),
//                 Center(child: Text('BIRDS')),
//             ],
//           ),
//         ),
//       ),
//     );*///