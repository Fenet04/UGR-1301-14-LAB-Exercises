import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/post_bloc.dart';
import 'blocs/post_event.dart';
import 'screens/post_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BLoC Example',
      home: BlocProvider(
        create: (context) => PostBloc()..add(LoadPosts()),
        child: PostListScreen(),
      ),
    );
  }
}
