import 'package:flutter/material.dart';
import 'package:moor_example_2/src/data/moor_database.dart';
import 'package:moor_example_2/src/screens/home_page.dart';
import 'package:provider/provider.dart';

class MoorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      // The single instance of AppDatabase
      builder: (_) => AppDatabase().taskDao,
      child: MaterialApp(
        title: 'Moor App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
