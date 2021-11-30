import 'package:finance/create_transaction_page.dart';
import 'package:finance/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _navigatorKey = GlobalKey<NavigatorState>();

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
              onPressed: () {
                _navigatorKey.currentState?.pushNamed('/transactions/create');
              },
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
                        icon: const Icon(Icons.home),
                        onPressed: () {
                          _navigatorKey.currentState?.pushNamed('/');
                        }),
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
            body: Navigator(
              key: _navigatorKey,
              initialRoute: '/',
              onGenerateRoute: (RouteSettings settings) {
                WidgetBuilder builder;
                switch (settings.name) {
                  case '/':
                    builder = (BuildContext context) => const DashboardPage();
                    break;
                  case '/transactions/create':
                    builder =
                        (BuildContext context) => const CreateTransactionPage();
                    break;
                  default:
                    throw Exception('Invalid route: ${settings.name}');
                }
                return MaterialPageRoute(
                  builder: builder,
                  settings: settings,
                );
              },
            ),
            backgroundColor: const Color(0xF0FFFFFF)));
  }
}
