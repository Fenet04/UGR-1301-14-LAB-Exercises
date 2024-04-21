import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_provider.dart';
import 'post_list_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PostProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: PostListScreen(),
    );
  }
}
