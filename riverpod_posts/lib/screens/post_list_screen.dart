import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../notifiers/post_notifier.dart';
import '../models/post.dart';
import 'post_detail_screen.dart';

class PostListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPosts = ref.watch(postProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: asyncPosts.when(
        data: (posts) => ListView.builder(
          itemCount: posts.length,
          itemBuilder: (_, index) {
            Post post = posts[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostDetailScreen(post: post)),
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
