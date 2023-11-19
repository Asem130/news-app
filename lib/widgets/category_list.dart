import 'package:flutter/material.dart';
import 'package:retest1/model/category_model.dart';
import 'package:retest1/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
   CategoryList({super.key});
   final List<CategoryModel> categories =  [
    CategoryModel(
      image: 'assets/960x0.webp',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/pulse-shape-from-stethscope-blackboard-3d-render_800514-573.jpg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/stock-photo-sports-tools-arrange-at-the-grass-2284630221.jpg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/texx.jpg',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
