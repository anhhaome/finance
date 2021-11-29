import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Finance',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Finance'),
              elevation: 0,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment',
              child: const Icon(Icons.add),
              elevation: 0,
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                        icon: const Icon(Icons.home), onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: const Icon(Icons.show_chart), onPressed: () {}),
                  ),
                  const Expanded(child: Text('')),
                  Expanded(
                    child: IconButton(
                        icon: const Icon(Icons.tab), onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: const Icon(Icons.settings), onPressed: () {}),
                  ),
                ],
              ),
              shape: const CircularNotchedRectangle(),
              color: Colors.white,
              elevation: 0,
            ),
            body: const Center(
              child: Text('Hello Finance'),
            ),
            backgroundColor: const Color(0xF0FFFFFF)));
  }
}
