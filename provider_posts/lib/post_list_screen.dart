// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_provider.dart';
import 'post_detail_screen.dart';
import 'post_model.dart';

class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: FutureBuilder(
        future: Provider.of<PostProvider>(context, listen: false).fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Consumer<PostProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                  itemCount: provider.posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(provider.posts[index].title),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostDetailScreen(post: provider.posts[index]),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
