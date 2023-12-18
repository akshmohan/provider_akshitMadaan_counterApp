import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/list_provider.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(numbersProviderModel.numbers[index].toString(),
                        style: TextStyle(fontSize: 30));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
