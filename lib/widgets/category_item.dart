import 'package:flutter/material.dart';
import 'package:retest1/model/category_model.dart';
import 'package:retest1/model/post_model.dart';
import 'package:retest1/views/category_screen.dart';



class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});
  final List<PostModel> Posts = const [];
  /*  void getData()
  {
    Posts.add(PostModel(
      image: news.get();
    ));
  } */
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return  CategoryScreen(category:category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Stack(alignment: AlignmentDirectional.center, children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            width: 200,
            height: 200,
            child: Image.asset(
              category.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            category.categoryName,
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
          )
        ]),
      ),
    );
  }
}
