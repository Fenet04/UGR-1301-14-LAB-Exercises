import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/post.dart';

class PostNotifier extends AsyncNotifier<List<Post>> {
  @override
  Future<List<Post>> build() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data) => Post.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

final postProvider = AsyncNotifierProvider<PostNotifier, List<Post>>((ref) {
  return PostNotifier();
} as PostNotifier Function());
