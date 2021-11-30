import 'package:flutter/widgets.dart';

class CreateTransactionPage extends StatefulWidget {
  const CreateTransactionPage({Key? key}) : super(key: key);

  @override
  _CreateTransactionPageState createState() => _CreateTransactionPageState();
}

class _CreateTransactionPageState extends State<CreateTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello Create Transaction"),
    );
  }
}
