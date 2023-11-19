import 'package:flutter/material.dart';
import 'package:retest1/model/post_model.dart';
import 'package:retest1/widgets/post_item.dart';
import 'package:retest1/widgets/webview.dart';

class PostList extends StatelessWidget {
  const PostList({super.key, required this.articles});
  final List<PostModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    splashColor: const Color.fromARGB(255, 214, 214, 210),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Web()));
                    },
                    child: PostItem(postmodel: articles[index])),
              ),
          childCount: articles.length),
    );
  }
}
