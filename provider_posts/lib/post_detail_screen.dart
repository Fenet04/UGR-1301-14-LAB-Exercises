import 'package:flutter/material.dart';
import 'post_model.dart';

class PostDetailScreen extends StatelessWidget {
  final Post post;

  PostDetailScreen({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(post.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(post.body),
          ],
        ),
      ),
    );
  }
}
