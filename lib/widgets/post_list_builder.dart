import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:retest1/model/post_model.dart';
import 'package:retest1/services/news_services.dart';

import 'package:retest1/widgets/post_list.dart';

class PostListViewBuilder extends StatefulWidget {
  final String category;
  const PostListViewBuilder({super.key,required this.category});
  @override
  State<PostListViewBuilder> createState() => _PostListViewBuilderState();
}

class _PostListViewBuilderState extends State<PostListViewBuilder> {
  
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PostList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
                child: Center(child: Text('Oops there was an error')));
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });

    /* isLoading
        ? const SliverFillRemaining(
          child: Center(child: CircularProgressIndicator()))
        :articles.isNotEmpty
            ?PostList(
              articles: articles,
              )
              :const SliverFillRemaining(
                child: Center(child: Text('Oops there was an error'))); */
  }
}
