import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/list_provider.dart';
import 'package:provider_practice/second.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: SizedBox(
          child: Column(
            children: [
              Text(numbersProviderModel.numbers.last.toString(),
                  style: TextStyle(fontSize: 50)),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(numbersProviderModel.numbers[index].toString(),
                        style: TextStyle(fontSize: 30));
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Second(),
                    ),
                  );
                },
                child: Text('Second'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
