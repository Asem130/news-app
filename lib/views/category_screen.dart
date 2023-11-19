import 'package:flutter/material.dart';
import 'package:retest1/widgets/post_list_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('News',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0))),
              Text('Cloud',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 234, 255, 0))),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(0, 195, 191, 191),
          elevation: 0,
        ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomScrollView(
                    slivers: [
                      PostListViewBuilder(
              category: category,
                      ),
                    ],
                  ),
            ),
    );
  }
}
