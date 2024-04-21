import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post_model.dart';

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      _posts = data.map((item) => Post.fromJson(item)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
