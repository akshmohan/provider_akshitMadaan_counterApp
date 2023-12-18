import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/list_provider.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}